.class public final enum Lpa/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lpa/g;

.field public static final enum b:Lpa/g;

.field public static final enum c:Lpa/g;

.field public static final enum d:Lpa/g;

.field public static final enum e:Lpa/g;

.field public static final enum f:Lpa/g;

.field private static final synthetic g:[Lpa/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lpa/g;

    .line 2
    .line 3
    const-string v1, "low"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lpa/g;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lpa/g;->a:Lpa/g;

    .line 10
    .line 11
    new-instance v0, Lpa/g;

    .line 12
    .line 13
    const-string v1, "medium"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lpa/g;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lpa/g;->b:Lpa/g;

    .line 20
    .line 21
    new-instance v0, Lpa/g;

    .line 22
    .line 23
    const-string v1, "high"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lpa/g;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lpa/g;->c:Lpa/g;

    .line 30
    .line 31
    new-instance v0, Lpa/g;

    .line 32
    .line 33
    const-string v1, "veryHigh"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lpa/g;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lpa/g;->d:Lpa/g;

    .line 40
    .line 41
    new-instance v0, Lpa/g;

    .line 42
    .line 43
    const-string v1, "ultraHigh"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lpa/g;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lpa/g;->e:Lpa/g;

    .line 50
    .line 51
    new-instance v0, Lpa/g;

    .line 52
    .line 53
    const-string v1, "max"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lpa/g;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lpa/g;->f:Lpa/g;

    .line 60
    .line 61
    invoke-static {}, Lpa/g;->a()[Lpa/g;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lpa/g;->g:[Lpa/g;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic a()[Lpa/g;
    .locals 6

    .line 1
    sget-object v0, Lpa/g;->a:Lpa/g;

    .line 2
    .line 3
    sget-object v1, Lpa/g;->b:Lpa/g;

    .line 4
    .line 5
    sget-object v2, Lpa/g;->c:Lpa/g;

    .line 6
    .line 7
    sget-object v3, Lpa/g;->d:Lpa/g;

    .line 8
    .line 9
    sget-object v4, Lpa/g;->e:Lpa/g;

    .line 10
    .line 11
    sget-object v5, Lpa/g;->f:Lpa/g;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lpa/g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lpa/g;
    .locals 1

    .line 1
    const-class v0, Lpa/g;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lpa/g;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lpa/g;
    .locals 1

    .line 1
    sget-object v0, Lpa/g;->g:[Lpa/g;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lpa/g;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lpa/g;

    .line 8
    .line 9
    return-object v0
.end method
