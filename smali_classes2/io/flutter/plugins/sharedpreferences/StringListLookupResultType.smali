.class public final enum Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lcd/a;

.field private static final synthetic $VALUES:[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

.field public static final Companion:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;

.field public static final enum JSON_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

.field public static final enum PLATFORM_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

.field public static final enum UNEXPECTED_STRING:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;


# instance fields
.field private final raw:I


# direct methods
.method private static final synthetic $values()[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 3

    sget-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->PLATFORM_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    sget-object v1, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->JSON_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    sget-object v2, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->UNEXPECTED_STRING:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    filled-new-array {v0, v1, v2}, [Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 2
    .line 3
    const-string v1, "PLATFORM_ENCODED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->PLATFORM_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 10
    .line 11
    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 12
    .line 13
    const-string v1, "JSON_ENCODED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->JSON_ENCODED:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 20
    .line 21
    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 22
    .line 23
    const-string v1, "UNEXPECTED_STRING"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->UNEXPECTED_STRING:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 30
    .line 31
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$values()[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$VALUES:[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 36
    .line 37
    invoke-static {v0}, Lcd/b;->a([Ljava/lang/Enum;)Lcd/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$ENTRIES:Lcd/a;

    .line 42
    .line 43
    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->Companion:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType$Companion;

    .line 50
    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->raw:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lcd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcd/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$ENTRIES:Lcd/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->$VALUES:[Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    .line 1
    iget v0, p0, Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;->raw:I

    .line 2
    .line 3
    return v0
.end method
