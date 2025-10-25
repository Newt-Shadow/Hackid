.class public final enum Lne/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/x$a;
    }
.end annotation


# static fields
.field public static final b:Lne/x$a;

.field public static final enum c:Lne/x;

.field public static final enum d:Lne/x;

.field public static final enum e:Lne/x;

.field public static final enum f:Lne/x;

.field public static final enum g:Lne/x;

.field public static final enum h:Lne/x;

.field private static final synthetic i:[Lne/x;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lne/x;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "http/1.0"

    .line 5
    .line 6
    const-string v3, "HTTP_1_0"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lne/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lne/x;->c:Lne/x;

    .line 12
    .line 13
    new-instance v0, Lne/x;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "http/1.1"

    .line 17
    .line 18
    const-string v3, "HTTP_1_1"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lne/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lne/x;->d:Lne/x;

    .line 24
    .line 25
    new-instance v0, Lne/x;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "spdy/3.1"

    .line 29
    .line 30
    const-string v3, "SPDY_3"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lne/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lne/x;->e:Lne/x;

    .line 36
    .line 37
    new-instance v0, Lne/x;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "h2"

    .line 41
    .line 42
    const-string v3, "HTTP_2"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lne/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lne/x;->f:Lne/x;

    .line 48
    .line 49
    new-instance v0, Lne/x;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "h2_prior_knowledge"

    .line 53
    .line 54
    const-string v3, "H2_PRIOR_KNOWLEDGE"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lne/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lne/x;->g:Lne/x;

    .line 60
    .line 61
    new-instance v0, Lne/x;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "quic"

    .line 65
    .line 66
    const-string v3, "QUIC"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lne/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lne/x;->h:Lne/x;

    .line 72
    .line 73
    invoke-static {}, Lne/x;->a()[Lne/x;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lne/x;->i:[Lne/x;

    .line 78
    .line 79
    new-instance v0, Lne/x$a;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-direct {v0, v1}, Lne/x$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lne/x;->b:Lne/x$a;

    .line 86
    .line 87
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lne/x;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lne/x;
    .locals 6

    .line 1
    sget-object v0, Lne/x;->c:Lne/x;

    sget-object v1, Lne/x;->d:Lne/x;

    sget-object v2, Lne/x;->e:Lne/x;

    sget-object v3, Lne/x;->f:Lne/x;

    sget-object v4, Lne/x;->g:Lne/x;

    sget-object v5, Lne/x;->h:Lne/x;

    filled-new-array/range {v0 .. v5}, [Lne/x;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lne/x;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lne/x;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lne/x;
    .locals 1

    .line 1
    const-class v0, Lne/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lne/x;

    return-object p0
.end method

.method public static values()[Lne/x;
    .locals 1

    .line 1
    sget-object v0, Lne/x;->i:[Lne/x;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lne/x;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/x;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
