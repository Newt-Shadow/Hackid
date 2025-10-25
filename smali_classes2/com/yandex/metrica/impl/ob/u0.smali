.class public final enum Lcom/yandex/metrica/impl/ob/u0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/u0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/u0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/yandex/metrica/impl/ob/u0;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/u0;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/u0;

.field public static final enum e:Lcom/yandex/metrica/impl/ob/u0;

.field private static final synthetic f:[Lcom/yandex/metrica/impl/ob/u0;

.field public static final g:Lcom/yandex/metrica/impl/ob/u0$a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/u0;

    .line 2
    .line 3
    const-string v1, "UNDEFINED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/yandex/metrica/impl/ob/u0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/u0;->b:Lcom/yandex/metrica/impl/ob/u0;

    .line 10
    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/u0;

    .line 12
    .line 13
    const-string v2, "APP"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v2}, Lcom/yandex/metrica/impl/ob/u0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 20
    .line 21
    new-instance v2, Lcom/yandex/metrica/impl/ob/u0;

    .line 22
    .line 23
    const-string v3, "SATELLITE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v3}, Lcom/yandex/metrica/impl/ob/u0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/yandex/metrica/impl/ob/u0;->d:Lcom/yandex/metrica/impl/ob/u0;

    .line 30
    .line 31
    new-instance v3, Lcom/yandex/metrica/impl/ob/u0;

    .line 32
    .line 33
    const-string v4, "RETAIL"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v4}, Lcom/yandex/metrica/impl/ob/u0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/yandex/metrica/impl/ob/u0;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcom/yandex/metrica/impl/ob/u0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/yandex/metrica/impl/ob/u0;->f:[Lcom/yandex/metrica/impl/ob/u0;

    .line 46
    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/u0$a;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/u0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/yandex/metrica/impl/ob/u0;->g:Lcom/yandex/metrica/impl/ob/u0$a;

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
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/u0;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/u0;
    .locals 1

    const-class v0, Lcom/yandex/metrica/impl/ob/u0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/u0;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/u0;
    .locals 1

    sget-object v0, Lcom/yandex/metrica/impl/ob/u0;->f:[Lcom/yandex/metrica/impl/ob/u0;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/u0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/u0;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/u0;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
