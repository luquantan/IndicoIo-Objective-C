//
//  ICDocumentClassObject.m
//  Indico iOS Demo
//
//  Created by ezra on 11/5/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import "ICDocumentClassObject.h"

@implementation ICDocumentClassObject

@synthesize fashion = _fashion;
@synthesize art = _art;
@synthesize energy = _energy;
@synthesize economics = _economics;
@synthesize entrepreneur = _entrepreneur;
@synthesize books = _books;
@synthesize politics = _politics;
@synthesize gardening = _gardening;
@synthesize nba = _nba;
@synthesize conservative = _conservative;
@synthesize technology = _technology;
@synthesize startups = _startups;
@synthesize relationships = _relationships;
@synthesize education = _education;
@synthesize humor = _humor;
@synthesize psychology = _psychology;
@synthesize bicycling = _bicycling;
@synthesize investing = _investing;
@synthesize travel = _travel;
@synthesize cooking = _cooking;
@synthesize christianity = _christianity;
@synthesize environment = _environment;
@synthesize religion = _religion;
@synthesize health = _health;
@synthesize hockey = _hockey;
@synthesize pets = _pets;
@synthesize music = _music;
@synthesize soccer = _soccer;
@synthesize guns = _guns;
@synthesize gaming = _gaming;
@synthesize jobs = _jobs;
@synthesize business = _business;
@synthesize nature = _nature;
@synthesize food = _food;
@synthesize cars = _cars;
@synthesize photography = _photography;
@synthesize philosophy = _philosophy;
@synthesize geek = _geek;
@synthesize sports = _sports;
@synthesize baseball = _baseball;
@synthesize news = _news;
@synthesize television = _television;
@synthesize entertainment = _entertainment;
@synthesize parenting = _parenting;
@synthesize comics = _comics;
@synthesize science = _science;
@synthesize nfl = _nfl;
@synthesize programming = _programming;
@synthesize personalfinance = _personalfinance;
@synthesize atheism = _atheism;
@synthesize movies = _movies;
@synthesize anime = _anime;
@synthesize fitness = _fitness;
@synthesize military = _military;
@synthesize realestate = _realestate;
@synthesize history = _history;

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super initWithDictionary:dict];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]])
    {

        self.fashion = [[dict objectOrNilForKey:kICFashionKey] doubleValue];
        self.art = [[dict objectOrNilForKey:kICArtKey] doubleValue];
        self.energy = [[dict objectOrNilForKey:kICEnergyKey] doubleValue];
        self.economics = [[dict objectOrNilForKey:kICEconomicsKey] doubleValue];
        self.entrepreneur = [[dict objectOrNilForKey:kICEntrepreneurKey] doubleValue];
        self.books = [[dict objectOrNilForKey:kICBooksKey] doubleValue];
        self.politics = [[dict objectOrNilForKey:kICPoliticsKey] doubleValue];
        self.gardening = [[dict objectOrNilForKey:kICGardeningKey] doubleValue];
        self.nba = [[dict objectOrNilForKey:kICNbaKey] doubleValue];
        self.conservative = [[dict objectOrNilForKey:kICConservativeKey] doubleValue];
        self.technology = [[dict objectOrNilForKey:kICTechnologyKey] doubleValue];
        self.startups = [[dict objectOrNilForKey:kICStartupsKey] doubleValue];
        self.relationships = [[dict objectOrNilForKey:kICRelationshipsKey] doubleValue];
        self.education = [[dict objectOrNilForKey:kICEducationKey
                           ] doubleValue];
        self.humor = [[dict objectOrNilForKey:kICHumorKey] doubleValue];
        self.psychology = [[dict objectOrNilForKey:kICPsychologyKey] doubleValue];
        self.bicycling = [[dict objectOrNilForKey:kICBicyclingKey] doubleValue];
        self.investing = [[dict objectOrNilForKey:kICInvestingKey] doubleValue];
        self.travel = [[dict objectOrNilForKey:kICTravelKey] doubleValue];
        self.cooking = [[dict objectOrNilForKey:kICCookingKey] doubleValue];
        self.christianity = [[dict objectOrNilForKey:kICChristianityKey] doubleValue];
        self.environment = [[dict objectOrNilForKey:kICEnvironmentKey] doubleValue];
        self.religion = [[dict objectOrNilForKey:kICReligionKey] doubleValue];
        self.health = [[dict objectOrNilForKey:kICHealthKey] doubleValue];
        self.hockey = [[dict objectOrNilForKey:kICHockeyKey] doubleValue];
        self.pets = [[dict objectOrNilForKey:kICPetsKey] doubleValue];
        self.music = [[dict objectOrNilForKey:kICMusicKey] doubleValue];
        self.soccer = [[dict objectOrNilForKey:kICSoccerKey] doubleValue];
        self.guns = [[dict objectOrNilForKey:kICGunsKey] doubleValue];
        self.gaming = [[dict objectOrNilForKey:kICGamingKey] doubleValue];
        self.jobs = [[dict objectOrNilForKey:kICJobsKey] doubleValue];
        self.business = [[dict objectOrNilForKey:kICBusinessKey] doubleValue];
        self.nature = [[dict objectOrNilForKey:kICNatureKey] doubleValue];
        self.food = [[dict objectOrNilForKey:kICFoodKey] doubleValue];
        self.cars = [[dict objectOrNilForKey:kICCarsKey] doubleValue];
        self.photography = [[dict objectOrNilForKey:kICPhotographyKey] doubleValue];
        self.philosophy = [[dict objectOrNilForKey:kICPhilosophyKey] doubleValue];
        self.geek = [[dict objectOrNilForKey:kICGeekKey] doubleValue];
        self.sports = [[dict objectOrNilForKey:kICSportsKey] doubleValue];
        self.baseball = [[dict objectOrNilForKey:kICBaseballKey] doubleValue];
        self.news = [[dict objectOrNilForKey:kICNewsKey] doubleValue];
        self.television = [[dict objectOrNilForKey:kICTelevisionKey] doubleValue];
        self.entertainment = [[dict objectOrNilForKey:kICEntertainmentKey] doubleValue];
        self.parenting = [[dict objectOrNilForKey:kICParentingKey] doubleValue];
        self.comics = [[dict objectOrNilForKey:kICComicsKey] doubleValue];
        self.science = [[dict objectOrNilForKey:kICScienceKey] doubleValue];
        self.nfl = [[dict objectOrNilForKey:kICNflKey] doubleValue];
        self.programming = [[dict objectOrNilForKey:kICProgrammingKey] doubleValue];
        self.personalfinance = [[dict objectOrNilForKey:kICPersonalfinanceKey] doubleValue];
        self.atheism = [[dict objectOrNilForKey:kICAtheismKey] doubleValue];
        self.movies = [[dict objectOrNilForKey:kICMoviesKey] doubleValue];
        self.anime = [[dict objectOrNilForKey:kICAnimeKey] doubleValue];
        self.fitness = [[dict objectOrNilForKey:kICFitnessKey] doubleValue];
        self.military = [[dict objectOrNilForKey:kICMilitaryKey] doubleValue];
        self.realestate = [[dict objectOrNilForKey:kICRealestateKey] doubleValue];
        self.history = [[dict objectOrNilForKey:kICHistoryKey] doubleValue];
    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionaryWithDictionary:[super dictionaryRepresentation]];
    
    [mutableDict setValue:[NSNumber numberWithDouble:self.fashion] forKey:kICFashionKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.art] forKey:kICArtKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.energy] forKey:kICEnergyKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.economics] forKey:kICEconomicsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.entrepreneur] forKey:kICEntrepreneurKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.books] forKey:kICBooksKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.politics] forKey:kICPoliticsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.gardening] forKey:kICGardeningKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.nba] forKey:kICNbaKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.conservative] forKey:kICConservativeKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.technology] forKey:kICTechnologyKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.startups] forKey:kICStartupsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.relationships] forKey:kICRelationshipsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.education] forKey:kICEducationKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.humor] forKey:kICHumorKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.psychology] forKey:kICPsychologyKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bicycling] forKey:kICBicyclingKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.investing] forKey:kICInvestingKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.travel] forKey:kICTravelKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.cooking] forKey:kICCookingKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.christianity] forKey:kICChristianityKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.environment] forKey:kICEnvironmentKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.religion] forKey:kICReligionKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.health] forKey:kICHealthKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hockey] forKey:kICHockeyKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pets] forKey:kICPetsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.music] forKey:kICMusicKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.soccer] forKey:kICSoccerKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.guns] forKey:kICGunsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.gaming] forKey:kICGamingKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.jobs] forKey:kICJobsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.business] forKey:kICBusinessKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.nature] forKey:kICNatureKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.food] forKey:kICFoodKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.cars] forKey:kICCarsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.photography] forKey:kICPhotographyKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.philosophy] forKey:kICPhilosophyKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.geek] forKey:kICGeekKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sports] forKey:kICSportsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.baseball] forKey:kICBaseballKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.news] forKey:kICNewsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.television] forKey:kICTelevisionKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.entertainment] forKey:kICEntertainmentKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.parenting] forKey:kICParentingKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.comics] forKey:kICComicsKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.science] forKey:kICScienceKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.nfl] forKey:kICNflKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.programming] forKey:kICProgrammingKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.personalfinance] forKey:kICPersonalfinanceKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.atheism] forKey:kICAtheismKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.movies] forKey:kICMoviesKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.anime] forKey:kICAnimeKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.fitness] forKey:kICFitnessKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.military] forKey:kICMilitaryKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.realestate] forKey:kICRealestateKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.history] forKey:kICHistoryKey];
    
    
    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];

    self.fashion = [aDecoder decodeDoubleForKey:kICFashionKey];
    self.art = [aDecoder decodeDoubleForKey:kICArtKey];
    self.energy = [aDecoder decodeDoubleForKey:kICEnergyKey];
    self.economics = [aDecoder decodeDoubleForKey:kICEconomicsKey];
    self.entrepreneur = [aDecoder decodeDoubleForKey:kICEntrepreneurKey];
    self.books = [aDecoder decodeDoubleForKey:kICBooksKey];
    self.politics = [aDecoder decodeDoubleForKey:kICPoliticsKey];
    self.gardening = [aDecoder decodeDoubleForKey:kICGardeningKey];
    self.nba = [aDecoder decodeDoubleForKey:kICNbaKey];
    self.conservative = [aDecoder decodeDoubleForKey:kICConservativeKey];
    self.technology = [aDecoder decodeDoubleForKey:kICTechnologyKey];
    self.startups = [aDecoder decodeDoubleForKey:kICStartupsKey];
    self.relationships = [aDecoder decodeDoubleForKey:kICRelationshipsKey];
    self.education = [aDecoder decodeDoubleForKey:kICEducationKey];
    self.humor = [aDecoder decodeDoubleForKey:kICHumorKey];
    self.psychology = [aDecoder decodeDoubleForKey:kICPsychologyKey];
    self.bicycling = [aDecoder decodeDoubleForKey:kICBicyclingKey];
    self.investing = [aDecoder decodeDoubleForKey:kICInvestingKey];
    self.travel = [aDecoder decodeDoubleForKey:kICTravelKey];
    self.cooking = [aDecoder decodeDoubleForKey:kICCookingKey];
    self.christianity = [aDecoder decodeDoubleForKey:kICChristianityKey];
    self.environment = [aDecoder decodeDoubleForKey:kICEnvironmentKey];
    self.religion = [aDecoder decodeDoubleForKey:kICReligionKey];
    self.health = [aDecoder decodeDoubleForKey:kICHealthKey];
    self.hockey = [aDecoder decodeDoubleForKey:kICHockeyKey];
    self.pets = [aDecoder decodeDoubleForKey:kICPetsKey];
    self.music = [aDecoder decodeDoubleForKey:kICMusicKey];
    self.soccer = [aDecoder decodeDoubleForKey:kICSoccerKey];
    self.guns = [aDecoder decodeDoubleForKey:kICGunsKey];
    self.gaming = [aDecoder decodeDoubleForKey:kICGamingKey];
    self.jobs = [aDecoder decodeDoubleForKey:kICJobsKey];
    self.business = [aDecoder decodeDoubleForKey:kICBusinessKey];
    self.nature = [aDecoder decodeDoubleForKey:kICNatureKey];
    self.food = [aDecoder decodeDoubleForKey:kICFoodKey];
    self.cars = [aDecoder decodeDoubleForKey:kICCarsKey];
    self.photography = [aDecoder decodeDoubleForKey:kICPhotographyKey];
    self.philosophy = [aDecoder decodeDoubleForKey:kICPhilosophyKey];
    self.geek = [aDecoder decodeDoubleForKey:kICGeekKey];
    self.sports = [aDecoder decodeDoubleForKey:kICSportsKey];
    self.baseball = [aDecoder decodeDoubleForKey:kICBaseballKey];
    self.news = [aDecoder decodeDoubleForKey:kICNewsKey];
    self.television = [aDecoder decodeDoubleForKey:kICTelevisionKey];
    self.entertainment = [aDecoder decodeDoubleForKey:kICEntertainmentKey];
    self.parenting = [aDecoder decodeDoubleForKey:kICParentingKey];
    self.comics = [aDecoder decodeDoubleForKey:kICComicsKey];
    self.science = [aDecoder decodeDoubleForKey:kICScienceKey];
    self.nfl = [aDecoder decodeDoubleForKey:kICNflKey];
    self.programming = [aDecoder decodeDoubleForKey:kICProgrammingKey];
    self.personalfinance = [aDecoder decodeDoubleForKey:kICPersonalfinanceKey];
    self.atheism = [aDecoder decodeDoubleForKey:kICAtheismKey];
    self.movies = [aDecoder decodeDoubleForKey:kICMoviesKey];
    self.anime = [aDecoder decodeDoubleForKey:kICAnimeKey];
    self.fitness = [aDecoder decodeDoubleForKey:kICFitnessKey];
    self.military = [aDecoder decodeDoubleForKey:kICMilitaryKey];
    self.realestate = [aDecoder decodeDoubleForKey:kICRealestateKey];
    self.history = [aDecoder decodeDoubleForKey:kICHistoryKey];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [super encodeWithCoder:aCoder];
    
    [aCoder encodeDouble:_fashion forKey:kICFashionKey];
    [aCoder encodeDouble:_art forKey:kICArtKey];
    [aCoder encodeDouble:_energy forKey:kICEnergyKey];
    [aCoder encodeDouble:_economics forKey:kICEconomicsKey];
    [aCoder encodeDouble:_entrepreneur forKey:kICEntrepreneurKey];
    [aCoder encodeDouble:_books forKey:kICBooksKey];
    [aCoder encodeDouble:_politics forKey:kICPoliticsKey];
    [aCoder encodeDouble:_gardening forKey:kICGardeningKey];
    [aCoder encodeDouble:_nba forKey:kICNbaKey];
    [aCoder encodeDouble:_conservative forKey:kICConservativeKey];
    [aCoder encodeDouble:_technology forKey:kICTechnologyKey];
    [aCoder encodeDouble:_startups forKey:kICStartupsKey];
    [aCoder encodeDouble:_relationships forKey:kICRelationshipsKey];
    [aCoder encodeDouble:_education forKey:kICEducationKey];
    [aCoder encodeDouble:_humor forKey:kICHumorKey];
    [aCoder encodeDouble:_psychology forKey:kICPsychologyKey];
    [aCoder encodeDouble:_bicycling forKey:kICBicyclingKey];
    [aCoder encodeDouble:_investing forKey:kICInvestingKey];
    [aCoder encodeDouble:_travel forKey:kICTravelKey];
    [aCoder encodeDouble:_cooking forKey:kICCookingKey];
    [aCoder encodeDouble:_christianity forKey:kICChristianityKey];
    [aCoder encodeDouble:_environment forKey:kICEnvironmentKey];
    [aCoder encodeDouble:_religion forKey:kICReligionKey];
    [aCoder encodeDouble:_health forKey:kICHealthKey];
    [aCoder encodeDouble:_hockey forKey:kICHockeyKey];
    [aCoder encodeDouble:_pets forKey:kICPetsKey];
    [aCoder encodeDouble:_music forKey:kICMusicKey];
    [aCoder encodeDouble:_soccer forKey:kICSoccerKey];
    [aCoder encodeDouble:_guns forKey:kICGunsKey];
    [aCoder encodeDouble:_gaming forKey:kICGamingKey];
    [aCoder encodeDouble:_jobs forKey:kICJobsKey];
    [aCoder encodeDouble:_business forKey:kICBusinessKey];
    [aCoder encodeDouble:_nature forKey:kICNatureKey];
    [aCoder encodeDouble:_food forKey:kICFoodKey];
    [aCoder encodeDouble:_cars forKey:kICCarsKey];
    [aCoder encodeDouble:_photography forKey:kICPhotographyKey];
    [aCoder encodeDouble:_philosophy forKey:kICPhilosophyKey];
    [aCoder encodeDouble:_geek forKey:kICGeekKey];
    [aCoder encodeDouble:_sports forKey:kICSportsKey];
    [aCoder encodeDouble:_baseball forKey:kICBaseballKey];
    [aCoder encodeDouble:_news forKey:kICNewsKey];
    [aCoder encodeDouble:_television forKey:kICTelevisionKey];
    [aCoder encodeDouble:_entertainment forKey:kICEntertainmentKey];
    [aCoder encodeDouble:_parenting forKey:kICParentingKey];
    [aCoder encodeDouble:_comics forKey:kICComicsKey];
    [aCoder encodeDouble:_science forKey:kICScienceKey];
    [aCoder encodeDouble:_nfl forKey:kICNflKey];
    [aCoder encodeDouble:_programming forKey:kICProgrammingKey];
    [aCoder encodeDouble:_personalfinance forKey:kICPersonalfinanceKey];
    [aCoder encodeDouble:_atheism forKey:kICAtheismKey];
    [aCoder encodeDouble:_movies forKey:kICMoviesKey];
    [aCoder encodeDouble:_anime forKey:kICAnimeKey];
    [aCoder encodeDouble:_fitness forKey:kICFitnessKey];
    [aCoder encodeDouble:_military forKey:kICMilitaryKey];
    [aCoder encodeDouble:_realestate forKey:kICRealestateKey];
    [aCoder encodeDouble:_history forKey:kICHistoryKey];
    
}

- (id)copyWithZone:(NSZone *)zone
{
    __typeof__(self) copy = [super copyWithZone:zone];
    
    if (copy)
    {
        copy.fashion = self.fashion;
        copy.art = self.art;
        copy.energy = self.energy;
        copy.economics = self.economics;
        copy.entrepreneur = self.entrepreneur;
        copy.books = self.books;
        copy.politics = self.politics;
        copy.gardening = self.gardening;
        copy.nba = self.nba;
        copy.conservative = self.conservative;
        copy.technology = self.technology;
        copy.startups = self.startups;
        copy.relationships = self.relationships;
        copy.education = self.education;
        copy.humor = self.humor;
        copy.psychology = self.psychology;
        copy.bicycling = self.bicycling;
        copy.investing = self.investing;
        copy.travel = self.travel;
        copy.cooking = self.cooking;
        copy.christianity = self.christianity;
        copy.environment = self.environment;
        copy.religion = self.religion;
        copy.health = self.health;
        copy.hockey = self.hockey;
        copy.pets = self.pets;
        copy.music = self.music;
        copy.soccer = self.soccer;
        copy.guns = self.guns;
        copy.gaming = self.gaming;
        copy.jobs = self.jobs;
        copy.business = self.business;
        copy.nature = self.nature;
        copy.food = self.food;
        copy.cars = self.cars;
        copy.photography = self.photography;
        copy.philosophy = self.philosophy;
        copy.geek = self.geek;
        copy.sports = self.sports;
        copy.baseball = self.baseball;
        copy.news = self.news;
        copy.television = self.television;
        copy.entertainment = self.entertainment;
        copy.parenting = self.parenting;
        copy.comics = self.comics;
        copy.science = self.science;
        copy.nfl = self.nfl;
        copy.programming = self.programming;
        copy.personalfinance = self.personalfinance;
        copy.atheism = self.atheism;
        copy.movies = self.movies;
        copy.anime = self.anime;
        copy.fitness = self.fitness;
        copy.military = self.military;
        copy.realestate = self.realestate;
        copy.history = self.history;
    }
    
    return copy;
}

@end
