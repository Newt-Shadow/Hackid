.class public final enum Loa/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Loa/b;

.field public static final enum c:Loa/b;

.field public static final enum d:Loa/b;

.field public static final enum e:Loa/b;

.field public static final enum f:Loa/b;

.field private static final synthetic g:[Loa/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Loa/b;

    .line 2
    .line 3
    const-string v1, "off"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Loa/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Loa/b;->b:Loa/b;

    .line 10
    .line 11
    new-instance v0, Loa/b;

    .line 12
    .line 13
    const-string v1, "fast"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v1}, Loa/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Loa/b;->c:Loa/b;

    .line 20
    .line 21
    new-instance v0, Loa/b;

    .line 22
    .line 23
    const-string v1, "highQuality"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v1}, Loa/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Loa/b;->d:Loa/b;

    .line 30
    .line 31
    new-instance v0, Loa/b;

    .line 32
    .line 33
    const-string v1, "minimal"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v1}, Loa/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Loa/b;->e:Loa/b;

    .line 40
    .line 41
    new-instance v0, Loa/b;

    .line 42
    .line 43
    const-string v1, "zeroShutterLag"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v1}, Loa/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Loa/b;->f:Loa/b;

    .line 50
    .line 51
    invoke-static {}, Loa/b;->a()[Loa/b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Loa/b;->g:[Loa/b;

    .line 56
    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Loa/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static synthetic a()[Loa/b;
    .locals 5

    .line 1
    sget-object v0, Loa/b;->b:Loa/b;

    .line 2
    .line 3
    sget-object v1, Loa/b;->c:Loa/b;

    .line 4
    .line 5
    sget-object v2, Loa/b;->d:Loa/b;

    .line 6
    .line 7
    sget-object v3, Loa/b;->e:Loa/b;

    .line 8
    .line 9
    sget-object v4, Loa/b;->f:Loa/b;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Loa/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Loa/b;
    .locals 1

    .line 1
    const-class v0, Loa/b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Loa/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Loa/b;
    .locals 1

    .line 1
    sget-object v0, Loa/b;->g:[Loa/b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Loa/b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Loa/b;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Loa/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
