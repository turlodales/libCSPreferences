/**
 * @Author: Dana Buehre <creaturesurvive>
 * @Date:   04-09-2017 11:00:40
 * @Email:  dbuehre@me.com
 * @Filename: UIFont+CustomFont.m
 * @Last modified by:   creaturesurvive
 * @Last modified time: 04-09-2017 2:21:21
 * @Copyright: Copyright © 2014-2017 CreatureSurvive
 */


// #import "CSPFontCustomUIFont.h"
//  #import <CoreText/CoreText.h>
//
// @implementation UIFont (customFont)
// static NSMutableDictionary *registeredCustomFonts = nil;
//
// + (BOOL)registerFromURL:(NSURL *)fontURL {
//     CFErrorRef error;
//     BOOL registrationResult = YES;
//
//     registrationResult = CTFontManagerRegisterFontsForURL((__bridge CFURLRef)fontURL, kCTFontManagerScopeProcess, &error);
//
//     if (!registrationResult) {
//         CSDebug(@"Error with font registration: %@", error);
//         CFRelease(error);
//         return NO;
//     }
//     return YES;
// }
//
// + (NSArray *)registerFontFromURL:(NSURL *)fontURL {
//     // Dictionary creation
//     static dispatch_once_t onceToken;
//     dispatch_once(&onceToken, ^{
//         registeredCustomFonts = [NSMutableDictionary new];
//     });
//
//     NSArray *fontNames = nil;
//
//     // make sure we never run this code on multiple threads
//     @synchronized(registeredCustomFonts) {
//         // Check if this font is already registered
//         fontNames = [[registeredCustomFonts objectForKey:fontURL] copy];
//
//         if (fontNames == nil) {
//             // get The descriptors for the font
//             NSArray *descriptors = (__bridge_transfer NSArray *)(CTFontManagerCreateFontDescriptorsFromURL((__bridge CFURLRef)fontURL));
//             // Check errors
//             if (descriptors) {
//                 // create a list of all existing font names
//                 NSMutableArray *currentFontNames = [NSMutableArray new];
//                 for (NSDictionary *descriptor in descriptors) {
//                     NSString *fontName = [descriptor objectForKey:@"NSFontNameAttribute"];
//                     if (fontName) {
//                         [currentFontNames addObject:fontName];
//                     }
//                 }
//
//                 fontNames = [NSArray arrayWithArray:currentFontNames];
//                 if ([fontNames count] > 0) {
//                     if ([UIFont registerFromURL:fontURL]) {
//                         [registeredCustomFonts setObject:fontNames
//                                                   forKey:fontURL];
//                     } else {
//                         fontNames = nil;
//                     }
//                 }
//             }
//         }
//     }
//
//     return fontNames;
// }
//
// // + (NSArray *)customFonts {
//     NSArray *extensions = [NSArray arrayWithObjects:@"ttf", @"otf", @"ttc", @"otc", nil];
//     NSMutableArray *fonts = [NSMutableArray new];
//     NSFileManager *fileManager = [NSFileManager defaultManager];
//     NSString *entry, *directory = @"/User/Documents/CSPreferences/fonts";
//     NSDirectoryEnumerator *enumerator;
//     BOOL isDirectory;
//
//     // Change to directory
//     [fileManager changeCurrentDirectoryPath:directory];
//
//     // Enumerator for directory
//     enumerator = [fileManager enumeratorAtPath:directory];
//
//     // Get each entry (file or folder)
//     while ((entry = [enumerator nextObject]) != nil) {
//         // File or directory
//         if ([fileManager fileExistsAtPath:entry isDirectory:&isDirectory] && !isDirectory) {
//             NSURL *URL = [NSURL fileURLWithPath:entry];
//             if ([extensions containsObject:[URL pathExtension]]) {
//                 [fonts addObject:entry];
//             }
//         }
//     }
//
//     return [fonts copy];
// }

// @end