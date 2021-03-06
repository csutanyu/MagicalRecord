//
//  MagicalRecordTestBase.m
//  MagicalRecord
//
//  Created by Tony Arnold on 21/12/2013.
//  Copyright (c) 2013 Magical Panda Software LLC. All rights reserved.
//

#import "MagicalRecordTestBase.h"

@implementation MagicalRecordTestBase

- (void) setUp
{
    [super setUp];

    // Don't pollute the tests with logging
    [MagicalRecord setLogLevel:MagicalRecordLogLevelFatal];

    // Setup the default model from the current class' bundle
    [MagicalRecord setDefaultModelFromClass:[self class]];
}

- (void) tearDown
{
    [super tearDown];

    [MagicalRecord cleanUp];
}

@end
