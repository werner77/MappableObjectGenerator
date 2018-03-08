//
//  Main.m
//  MappableObjectGenerator
//
//  Created by Werner Altewischer on 2/16/11.
//  Copyright 2011 BehindMedia. All rights reserved.
//

#import "Main.h"
#include <getopt.h>
#import <BMCommons/BMCore.h>
#import <BMCommons/BMMappableObjectGenerator.h>
#import <BMCommons/NSNumber+BMCommons.h>
#import <BMCommons/BMFileHelper.h>

@implementation Main

int main (int argc, char * argv[]) {

    @autoreleasepool {
        
        //Example:
        //
        //MappableObjectGenerator -p "prefix-mappings.plist" -s "DTO" -h "header-generated.h.template" -i "header-custom.h.template" -j "implementation-generated.m.template"
        // -k "implementation-custom.m.template" -x "schema.xsd" "./output"
        
        BMMappableObjectGenerator *generator = [BMMappableObjectGenerator new];
        NSString *schemaPath = nil;
        
        int c;
        NSString *namespaceMappingsFile = nil;
        
        while (1)
        {
            int option_index = 0;
            static struct option long_options[] =
            {
                {"namespace-mappings-file", 1, 0, 'n'},
                {"prefix", 1, 0, 'p'},
                {"suffix", 1, 0, 's'},
                {"header-template-generated", 1, 0, 'h'},
                {"header-template-custom", 1, 0, 'i'},
                {"implementation-template-generated", 1, 0, 'j'},
                {"implementation-template-custom", 1, 0, 'k'},
                {"schema", 1, 0, 'x'},
                {"remove-old", 0, 0, 'r'},
                {"json-mode", 0, 0, 'm'},
                {"date-check-enabled", 0, 0, 'd'},
                {"swift-mode", 0, 0, 't'},
                {"default-namespace", 1, 0, 'f'},
                {"default-module", 1, 0, 'e'},
                {0, 0, 0, 0}
            };
            
            c = getopt_long (argc, argv, "n:s:p:h:i:j:k:x:rmdtf:e:",
                             long_options, &option_index);
            if (c == -1)
                break;
            
            NSString *optString = optarg ? [NSString stringWithCString:optarg encoding:NSUTF8StringEncoding] : nil;
            
            switch (c)
            {
                case 'n':
                    namespaceMappingsFile = optString;
                    break;
                    
                case 's':
                    generator.classNameSuffix = optString;
                    break;
                    
                case 'h':
                    generator.headerTemplatePath = optString;
                    break;
                    
                case 'i':
                    generator.customHeaderTemplatePath = optString;
                    break;
                    
                case 'j':
                    generator.implementationTemplatePath = optString;
                    break;
                    
                case 'k':
                    generator.customImplementationTemplatePath = optString;
                    break;
                    
                case 'x':
                    schemaPath = optString;
                    break;
                    
                case 'r':
                    generator.removeOldFiles = YES;
                    break;
                
                case 'p':
                    generator.classNamePrefix = optString;
                    break;
                    
                case 'm':
                    generator.schemaType = BMMappableObjectSchemaTypeJSON;
                    break;
                
                case 'd':
                    generator.useModificationDateCheck = YES;
                    break;
                
                case 't':
                    generator.swiftMode = YES;
                    break;
                    
                case 'f':
                    generator.defaultNamespace = optString;
                    break;
                    
                case 'e':
                    generator.defaultModule = optString;
                    break;
                    
                case '?':
                    break;
                    
                default:
                    fprintf (stderr, "?? getopt returned character code 0%o ??\n", c);
            }
        }
        
        if (optind == argc - 1) {
            generator.outputDir = [NSString stringWithCString:argv[optind] encoding:NSUTF8StringEncoding];
        }
        
        if ((!generator.defaultModule && generator.swiftMode) || (!generator.headerTemplatePath && !generator.swiftMode) || !generator.implementationTemplatePath || !schemaPath || !generator.outputDir) {
            fprintf(stderr, "Usage: MappableObjectGenerator [-n <namespace mappings plist file>] [-s <class name suffix>] [-p <class name prefix>] [-h <generated header template>] [-i <custom header template>] -j <generated implementation template> [-k <custom implementation template>] -x <schema file or dir containing schema files> [-r (removes old files)] [-d (checks modification date of files to determine if a write is necessary)] [-m (json schema mode, default is XML)] [-t (swift mode, default is ObjC)] [-f <default namespace>] [-e <default module, required for swift mode>] <output dir>\n");
            return 1;
        }
        
        if (namespaceMappingsFile) {
            //Read the mappings file
            NSDictionary *mappingsDictionary = [NSDictionary dictionaryWithContentsOfFile:namespaceMappingsFile];
            if (!mappingsDictionary) {
                fprintf (stderr, "Error: Could not read namespace mappings file");
                return 2;
            }
            generator.namespacePrefixMappings = mappingsDictionary;
            
        }
        
        NSFileManager *fm = [NSFileManager defaultManager];
        
        BOOL isDir;
        BOOL success = NO;
        NSError *error = nil;
        if ([fm fileExistsAtPath:schemaPath isDirectory:&isDir]) {
            if (isDir) {
                NSArray *schemaPaths = [BMFileHelper listFilePathsInDir:schemaPath withExtension:nil];
                success = [generator generateFromSchemas:schemaPaths withError:&error];
            } else {
                success = [generator generateFromSchema:schemaPath withError:&error];
            }
        } else {
            fprintf(stderr, "Schema file or directory not found");
        }
        
        if (success) {
            return 0;
        } else {
            return 1;
        }
    }
}

@end
