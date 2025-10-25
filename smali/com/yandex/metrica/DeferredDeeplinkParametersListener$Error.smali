.class public final enum Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/DeferredDeeplinkParametersListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

.field public static final enum NOT_A_FIRST_LAUNCH:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

.field public static final enum NO_REFERRER:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

.field public static final enum PARSE_ERROR:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

.field public static final enum UNKNOWN:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;


# instance fields
.field private final mDescription:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;
    .locals 4

    .line 1
    sget-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->NOT_A_FIRST_LAUNCH:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 2
    .line 3
    sget-object v1, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->PARSE_ERROR:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 4
    .line 5
    sget-object v2, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->NO_REFERRER:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 6
    .line 7
    sget-object v3, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->UNKNOWN:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Deferred deeplink parameters can be requested during first launch only."

    .line 5
    .line 6
    const-string v3, "NOT_A_FIRST_LAUNCH"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->NOT_A_FIRST_LAUNCH:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 12
    .line 13
    new-instance v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "Google Play referrer did not contain valid deferred deeplink parameters."

    .line 17
    .line 18
    const-string v3, "PARSE_ERROR"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->PARSE_ERROR:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 24
    .line 25
    new-instance v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "No referrer was found"

    .line 29
    .line 30
    const-string v3, "NO_REFERRER"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->NO_REFERRER:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 36
    .line 37
    new-instance v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "Unknown error"

    .line 41
    .line 42
    const-string v3, "UNKNOWN"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->UNKNOWN:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 48
    .line 49
    invoke-static {}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->$values()[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->$VALUES:[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 54
    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->mDescription:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->$VALUES:[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->mDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
