.class public final enum Lne/d0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/d0$a;
    }
.end annotation


# static fields
.field public static final b:Lne/d0$a;

.field public static final enum c:Lne/d0;

.field public static final enum d:Lne/d0;

.field public static final enum e:Lne/d0;

.field public static final enum f:Lne/d0;

.field public static final enum g:Lne/d0;

.field private static final synthetic h:[Lne/d0;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lne/d0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "TLSv1.3"

    .line 5
    .line 6
    const-string v3, "TLS_1_3"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lne/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lne/d0;->c:Lne/d0;

    .line 12
    .line 13
    new-instance v0, Lne/d0;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "TLSv1.2"

    .line 17
    .line 18
    const-string v3, "TLS_1_2"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lne/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lne/d0;->d:Lne/d0;

    .line 24
    .line 25
    new-instance v0, Lne/d0;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "TLSv1.1"

    .line 29
    .line 30
    const-string v3, "TLS_1_1"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lne/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lne/d0;->e:Lne/d0;

    .line 36
    .line 37
    new-instance v0, Lne/d0;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "TLSv1"

    .line 41
    .line 42
    const-string v3, "TLS_1_0"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lne/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lne/d0;->f:Lne/d0;

    .line 48
    .line 49
    new-instance v0, Lne/d0;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "SSLv3"

    .line 53
    .line 54
    const-string v3, "SSL_3_0"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lne/d0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lne/d0;->g:Lne/d0;

    .line 60
    .line 61
    invoke-static {}, Lne/d0;->a()[Lne/d0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lne/d0;->h:[Lne/d0;

    .line 66
    .line 67
    new-instance v0, Lne/d0$a;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, v1}, Lne/d0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lne/d0;->b:Lne/d0$a;

    .line 74
    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lne/d0;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lne/d0;
    .locals 5

    .line 1
    sget-object v0, Lne/d0;->c:Lne/d0;

    sget-object v1, Lne/d0;->d:Lne/d0;

    sget-object v2, Lne/d0;->e:Lne/d0;

    sget-object v3, Lne/d0;->f:Lne/d0;

    sget-object v4, Lne/d0;->g:Lne/d0;

    filled-new-array {v0, v1, v2, v3, v4}, [Lne/d0;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lne/d0;
    .locals 1

    .line 1
    const-class v0, Lne/d0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lne/d0;

    return-object p0
.end method

.method public static values()[Lne/d0;
    .locals 1

    .line 1
    sget-object v0, Lne/d0;->h:[Lne/d0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lne/d0;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/d0;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
