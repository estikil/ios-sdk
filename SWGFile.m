#import "NIKDate.h"
#import "SWGFile.h"

@implementation SWGFile

-(id)name: (NSString*) name
    path: (NSString*) path
    content_type: (NSString*) content_type
    metadata: (NSArray*) metadata
{
  _name = name;
  _path = path;
  _content_type = content_type;
  _metadata = metadata;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"]; 
        _path = dict[@"path"]; 
        _content_type = dict[@"content_type"]; 
        _metadata = dict[@"metadata"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
    if(_path != nil) dict[@"path"] = _path ;
    if(_content_type != nil) dict[@"content_type"] = _content_type ;
    if(_metadata != nil) dict[@"metadata"] = _metadata ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

