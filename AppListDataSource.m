//
//  AppListDataSource.m
//
//  Created by generic on 7/28/11.
//  Copyright 2011 HalOtis Inc. All rights reserved.
//

#import "AppListDataSource.h"


@implementation AppListDataSource

@synthesize data;

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSMutableDictionary *obj = [data objectAtIndex:[indexPath row]];

    NSString* launchUrl = [obj valueForKey:@"URL"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: launchUrl]];
}

- (id) init {
    if ([super init]){
        data = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *obj1 = [[NSMutableDictionary alloc] init];
        [obj1 setObject:@"http://itunes.apple.com/us/app/otto-matic/id306811786?&partnerId=30&tduid=gmE3OVNK0cQ" forKey:@"URL"];
        [obj1 setObject:@"Otto Matic" forKey:@"Title"];
        [obj1 setObject:@"Robots AND Aliens" forKey:@"Subtitle"];
        [obj1 setObject:@"otto-matic" forKey:@"img"];
        [data addObject:obj1];
        [obj1 release];
        
        //Kosomo
        obj1 = [[NSMutableDictionary alloc] init];
        [obj1 setObject:@"http://itunes.apple.com/us/app/kosmo-spin/id404446780?&partnerId=30&tduid=gmE3OVNK0cQ" forKey:@"URL"];
        [obj1 setObject:@"Kosmo Spin" forKey:@"Title"];
        [obj1 setObject:@"A FLYING SAUCER IS STEALING BREAKFAST" forKey:@"Subtitle"];
        [obj1 setObject:@"kosomo-spin" forKey:@"img"];
        [data addObject:obj1];
        [obj1 release];
        
        obj1 = [[NSMutableDictionary alloc] init];
        [obj1 setObject:@"http://itunes.apple.com/us/app/rc-heli-2/id427291520?&partnerId=30&tduid=gmE3OVNK0cQ" forKey:@"URL"];
        [obj1 setObject:@"RC Heli 2" forKey:@"Title"];
        [obj1 setObject:@"as close as you can get to the real thing" forKey:@"Subtitle"];
        [obj1 setObject:@"rc-heli-2" forKey:@"img"];
        [data addObject:obj1];
        [obj1 release];
        
        obj1 = [[NSMutableDictionary alloc] init];
        [obj1 setObject:@"http://itunes.apple.com/us/app/freekick-2/id423697475?&partnerId=30&tduid=gmE3OVNK0cQ" forKey:@"URL"];
        [obj1 setObject:@"Freekick 2" forKey:@"Title"];
        [obj1 setObject:@"Still READING? What are you waiting for! Try this game" forKey:@"Subtitle"];
        [obj1 setObject:@"freekick2" forKey:@"img"];
        [data addObject:obj1];
        [obj1 release];
        
        obj1 = [[NSMutableDictionary alloc] init];
        [obj1 setObject:@"http://itunes.apple.com/us/app/zombie-gunship/id435797419?&partnerId=30&tduid=gmE3OVNK0cQ" forKey:@"URL"];
        [obj1 setObject:@"Zombie Gunship" forKey:@"Title"];
        [obj1 setObject:@"fire your guns to slay waves of zombies" forKey:@"Subtitle"];
        [obj1 setObject:@"zombie-gunship" forKey:@"img"];
        [data addObject:obj1];
        [obj1 release];
        
        //init with Apps here for the time being... TODO
    }
    return self;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    NSMutableDictionary *obj = [data objectAtIndex:[indexPath row]];
    cell.textLabel.text = [obj valueForKey:@"Title"];
    cell.detailTextLabel.text = [obj valueForKey:@"Subtitle"];
    cell.imageView.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:[obj valueForKey:@"img"] ofType:@"png"]];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [data count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"TableCell";
    
    // Dequeue or create a new cell.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell.
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
    
}


@end
