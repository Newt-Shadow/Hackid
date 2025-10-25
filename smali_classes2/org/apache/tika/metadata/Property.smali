.class public final Lorg/apache/tika/metadata/Property;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/metadata/Property$ValueType;,
        Lorg/apache/tika/metadata/Property$PropertyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/tika/metadata/Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/metadata/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final choices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final internal:Z

.field private final name:Ljava/lang/String;

.field private final primaryProperty:Lorg/apache/tika/metadata/Property;

.field private final propertyType:Lorg/apache/tika/metadata/Property$PropertyType;

.field private final secondaryExtractProperties:[Lorg/apache/tika/metadata/Property;

.field private final valueType:Lorg/apache/tika/metadata/Property$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/tika/metadata/Property;->PROPERTIES:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 16
    invoke-direct/range {v0 .. v7}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;Lorg/apache/tika/metadata/Property;[Lorg/apache/tika/metadata/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;Lorg/apache/tika/metadata/Property;[Lorg/apache/tika/metadata/Property;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/tika/metadata/Property;->name:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lorg/apache/tika/metadata/Property;->internal:Z

    .line 4
    iput-object p3, p0, Lorg/apache/tika/metadata/Property;->propertyType:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 5
    iput-object p4, p0, Lorg/apache/tika/metadata/Property;->valueType:Lorg/apache/tika/metadata/Property$ValueType;

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    .line 6
    new-instance p3, Ljava/util/HashSet;

    .line 7
    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/tika/metadata/Property;->choices:Ljava/util/Set;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p2, p0, Lorg/apache/tika/metadata/Property;->choices:Ljava/util/Set;

    :goto_0
    if-eqz p6, :cond_1

    .line 9
    iput-object p6, p0, Lorg/apache/tika/metadata/Property;->primaryProperty:Lorg/apache/tika/metadata/Property;

    .line 10
    iput-object p7, p0, Lorg/apache/tika/metadata/Property;->secondaryExtractProperties:[Lorg/apache/tika/metadata/Property;

    goto :goto_1

    .line 11
    :cond_1
    iput-object p0, p0, Lorg/apache/tika/metadata/Property;->primaryProperty:Lorg/apache/tika/metadata/Property;

    .line 12
    iput-object p2, p0, Lorg/apache/tika/metadata/Property;->secondaryExtractProperties:[Lorg/apache/tika/metadata/Property;

    .line 13
    sget-object p2, Lorg/apache/tika/metadata/Property;->PROPERTIES:Ljava/util/Map;

    monitor-enter p2

    .line 14
    :try_start_0
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit p2

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private constructor <init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V
    .locals 6

    .line 18
    sget-object v3, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V
    .locals 6

    .line 17
    sget-object v3, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    return-void
.end method

.method public static composite(Lorg/apache/tika/metadata/Property;[Lorg/apache/tika/metadata/Property;)Lorg/apache/tika/metadata/Property;
    .locals 9

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->COMPOSITE:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    array-length v1, p1

    .line 15
    move v2, v0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v3, p1, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    sget-object v5, Lorg/apache/tika/metadata/Property$PropertyType;->COMPOSITE:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 25
    .line 26
    if-eq v4, v5, :cond_0

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Lorg/apache/tika/metadata/PropertyTypeException;

    .line 32
    .line 33
    invoke-virtual {v3}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/tika/metadata/PropertyTypeException;-><init>(Lorg/apache/tika/metadata/Property$PropertyType;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tika/metadata/Property;->getChoices()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/apache/tika/metadata/Property;->getChoices()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, [Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    :goto_1
    move-object v6, v0

    .line 62
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/apache/tika/metadata/Property;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0}, Lorg/apache/tika/metadata/Property;->isInternal()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    sget-object v4, Lorg/apache/tika/metadata/Property$PropertyType;->COMPOSITE:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 73
    .line 74
    sget-object v5, Lorg/apache/tika/metadata/Property$ValueType;->PROPERTY:Lorg/apache/tika/metadata/Property$ValueType;

    .line 75
    .line 76
    move-object v1, v0

    .line 77
    move-object v7, p0

    .line 78
    move-object v8, p1

    .line 79
    invoke-direct/range {v1 .. v8}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;Lorg/apache/tika/metadata/Property;[Lorg/apache/tika/metadata/Property;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    new-instance p1, Lorg/apache/tika/metadata/PropertyTypeException;

    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-direct {p1, p0}, Lorg/apache/tika/metadata/PropertyTypeException;-><init>(Lorg/apache/tika/metadata/Property$PropertyType;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 94
    .line 95
    const-string p1, "primaryProperty must not be null"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public static externalBoolean(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->BOOLEAN:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static externalBooleanSeq(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SEQ:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->BOOLEAN:Lorg/apache/tika/metadata/Property$ValueType;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static varargs externalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->CLOSED_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static externalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static externalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs externalOpenChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->OPEN_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static externalReal(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->REAL:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static externalRealSeq(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SEQ:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->REAL:Lorg/apache/tika/metadata/Property$ValueType;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->TEXT:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static externalTextBag(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->BAG:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->TEXT:Lorg/apache/tika/metadata/Property$ValueType;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tika/metadata/Property;->PROPERTIES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/tika/metadata/Property;

    .line 8
    .line 9
    return-object p0
.end method

.method public static getProperties(Ljava/lang/String;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedSet<",
            "Lorg/apache/tika/metadata/Property;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, ":"

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v1, Lorg/apache/tika/metadata/Property;->PROPERTIES:Ljava/util/Map;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lorg/apache/tika/metadata/Property;

    .line 63
    .line 64
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    monitor-exit v1

    .line 69
    return-object v0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public static getPropertyType(Ljava/lang/String;)Lorg/apache/tika/metadata/Property$PropertyType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tika/metadata/Property;->PROPERTIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tika/metadata/Property;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static internalBoolean(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->BOOLEAN:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->CLOSED_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static internalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static internalDateBag(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->BAG:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static internalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static internalIntegerSequence(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SEQ:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static varargs internalOpenChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->OPEN_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static internalRational(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->RATIONAL:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static internalReal(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->REAL:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static internalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->TEXT:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static internalTextBag(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->BAG:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->TEXT:Lorg/apache/tika/metadata/Property$ValueType;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static internalURI(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->URI:Lorg/apache/tika/metadata/Property$ValueType;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/tika/metadata/Property;

    invoke-virtual {p0, p1}, Lorg/apache/tika/metadata/Property;->compareTo(Lorg/apache/tika/metadata/Property;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/tika/metadata/Property;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/tika/metadata/Property;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->name:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lorg/apache/tika/metadata/Property;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/apache/tika/metadata/Property;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public getChoices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->choices:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrimaryProperty()Lorg/apache/tika/metadata/Property;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->primaryProperty:Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->propertyType:Lorg/apache/tika/metadata/Property$PropertyType;

    return-object v0
.end method

.method public getSecondaryExtractProperties()[Lorg/apache/tika/metadata/Property;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->secondaryExtractProperties:[Lorg/apache/tika/metadata/Property;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValueType()Lorg/apache/tika/metadata/Property$ValueType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->valueType:Lorg/apache/tika/metadata/Property$ValueType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tika/metadata/Property;->internal:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public isInternal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tika/metadata/Property;->internal:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMultiValuePermitted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->propertyType:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->BAG:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SEQ:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->ALT:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->COMPOSITE:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->primaryProperty:Lorg/apache/tika/metadata/Property;

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/apache/tika/metadata/Property;->isMultiValuePermitted()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0

    .line 29
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 30
    return v0
.end method
