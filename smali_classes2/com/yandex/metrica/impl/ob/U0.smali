.class public final enum Lcom/yandex/metrica/impl/ob/U0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/U0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/yandex/metrica/impl/ob/U0;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/U0;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/U0;

.field public static final enum e:Lcom/yandex/metrica/impl/ob/U0;

.field public static final enum f:Lcom/yandex/metrica/impl/ob/U0;

.field public static final enum g:Lcom/yandex/metrica/impl/ob/U0;

.field private static final synthetic h:[Lcom/yandex/metrica/impl/ob/U0;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/U0;

    .line 2
    .line 3
    const-string v1, "OK"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/yandex/metrica/impl/ob/U0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/U0;->b:Lcom/yandex/metrica/impl/ob/U0;

    .line 10
    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/U0;

    .line 12
    .line 13
    const-string v2, "IDENTIFIER_PROVIDER_UNAVAILABLE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v2}, Lcom/yandex/metrica/impl/ob/U0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/yandex/metrica/impl/ob/U0;->c:Lcom/yandex/metrica/impl/ob/U0;

    .line 20
    .line 21
    new-instance v2, Lcom/yandex/metrica/impl/ob/U0;

    .line 22
    .line 23
    const-string v3, "INVALID_ADV_ID"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v3}, Lcom/yandex/metrica/impl/ob/U0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/yandex/metrica/impl/ob/U0;->d:Lcom/yandex/metrica/impl/ob/U0;

    .line 30
    .line 31
    new-instance v3, Lcom/yandex/metrica/impl/ob/U0;

    .line 32
    .line 33
    const-string v4, "NO_STARTUP"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v4}, Lcom/yandex/metrica/impl/ob/U0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/yandex/metrica/impl/ob/U0;->e:Lcom/yandex/metrica/impl/ob/U0;

    .line 40
    .line 41
    new-instance v4, Lcom/yandex/metrica/impl/ob/U0;

    .line 42
    .line 43
    const-string v5, "FEATURE_DISABLED"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6, v5}, Lcom/yandex/metrica/impl/ob/U0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/yandex/metrica/impl/ob/U0;->f:Lcom/yandex/metrica/impl/ob/U0;

    .line 50
    .line 51
    new-instance v5, Lcom/yandex/metrica/impl/ob/U0;

    .line 52
    .line 53
    const-string v6, "UNKNOWN"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7, v6}, Lcom/yandex/metrica/impl/ob/U0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/yandex/metrica/impl/ob/U0;->g:Lcom/yandex/metrica/impl/ob/U0;

    .line 60
    .line 61
    filled-new-array/range {v0 .. v5}, [Lcom/yandex/metrica/impl/ob/U0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/yandex/metrica/impl/ob/U0;->h:[Lcom/yandex/metrica/impl/ob/U0;

    .line 66
    .line 67
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
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/U0;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/U0;
    .locals 4

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/U0;->values()[Lcom/yandex/metrica/impl/ob/U0;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 3
    iget-object v3, v2, Lcom/yandex/metrica/impl/ob/U0;->a:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/yandex/metrica/impl/ob/U0;->g:Lcom/yandex/metrica/impl/ob/U0;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/U0;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/U0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/yandex/metrica/impl/ob/U0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/U0;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/U0;->h:[Lcom/yandex/metrica/impl/ob/U0;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/U0;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/yandex/metrica/impl/ob/U0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U0;->a:Ljava/lang/String;

    return-object v0
.end method
