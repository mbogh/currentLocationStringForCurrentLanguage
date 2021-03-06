#import "NSString+CurrentLocationLocalized.h"

@implementation NSString (CurrentLocationLocalized)

+ (NSString *)currentLocationStringForCurrentLanguage
{

    NSDictionary *localizedStringDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                               @"Huidige locatie", @"nl",
                                               @"Current Location", @"en",
                                               @"Lieu actuel", @"fr",
                                               @"Aktueller Ort", @"de",
                                               @"Posizione attuale", @"it",
                                               @"現在地", @"ja",
                                               @"Ubicación actual", @"es",
                                               @"الموقع الحالي", @"ar",
                                               @"Ubicació actual", @"ca",
                                               @"Současná poloha", @"cs",
                                               @"Aktuel lokalitet", @"da",
                                               @"Τρέχουσα τοποθεσία", @"el",
                                               @"Current Location", @"en-GB",
                                               @"Nykyinen sijainti", @"fi",
                                               @"מיקום נוכחי", @"he",
                                               @"Trenutna lokacija", @"hr",
                                               @"Jelenlegi helyszín", @"hu",
                                               @"Lokasi Sekarang", @"id",
                                               @"현재 위치", @"ko",
                                               @"Lokasi Semasa", @"ms",
                                               @"Nåværende plassering", @"no",
                                               @"Bieżące położenie", @"pl",
                                               @"Localização Atual", @"pt",
                                               @"Localização actual", @"pt-PT",
                                               @"Loc actual", @"ro",
                                               @"Текущее размещение", @"ru",
                                               @"Aktuálna poloha", @"sk",
                                               @"Nuvarande plats", @"sv",
                                               @"ที่ตั้งปัจจุบัน", @"th",
                                               @"Şu Anki Yer", @"tr",
                                               @"Поточне місце", @"uk",
                                               @"Vị trí Hiện tại", @"vi",
                                               @"当前位置", @"zh-CN",
                                               @"目前位置", @"zh-TW",
                                               nil];
    
    NSString *currentLanguageCode = [[NSLocale preferredLanguages] objectAtIndex:0];
    NSString *localizedString = [localizedStringDictionary objectForKey:currentLanguageCode];
    
    if (!localizedString)
    {
        localizedString = [localizedStringDictionary objectForKey:@"en"];
    }
    
    return localizedString;
}

@end