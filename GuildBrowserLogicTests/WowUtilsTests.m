//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Vaibhav Gupta on 07/05/13.
//  Copyright (c) 2013 Charlie Fulton. All rights reserved.
//

#import "WowUtilsTests.h"
#import "WoWUtils.h"

@implementation WowUtilsTests

//1
-(void)testCharacterClassNameLookup
{
    
    //2
    STAssertEqualObjects(@"Warrior", [WoWUtils classFromCharacterType:1], @"ClassTyoe should be Warrior");
    
    //3
    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
                   
                   
    //4
    STAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
                                 
                                 
                                 
}
                  
- (void)testRaceTypeLookup {
    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], nil);
    STAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], nil);
    STAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],nil);
    // add the rest as an exercise
}
                  
                  
- (void)testQualityLookup {
    STAssertEquals(@"Grey", [WoWUtils qualityFromQualityType:1], nil);
    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]],nil);
    // add the rest as an exercise
    }
                                 
                                 

@end
