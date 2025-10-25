.class public final enum Lla/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lla/b;

.field public static final enum c:Lla/b;

.field public static final enum d:Lla/b;

.field public static final enum e:Lla/b;

.field private static final synthetic f:[Lla/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lla/b;

    .line 2
    .line 3
    const-string v1, "off"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lla/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lla/b;->b:Lla/b;

    .line 10
    .line 11
    new-instance v0, Lla/b;

    .line 12
    .line 13
    const-string v1, "auto"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v1}, Lla/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lla/b;->c:Lla/b;

    .line 20
    .line 21
    new-instance v0, Lla/b;

    .line 22
    .line 23
    const-string v1, "always"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v1}, Lla/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lla/b;->d:Lla/b;

    .line 30
    .line 31
    new-instance v0, Lla/b;

    .line 32
    .line 33
    const-string v1, "torch"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v1}, Lla/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lla/b;->e:Lla/b;

    .line 40
    .line 41
    invoke-static {}, Lla/b;->a()[Lla/b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lla/b;->f:[Lla/b;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lla/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static synthetic a()[Lla/b;
    .locals 4

    .line 1
    sget-object v0, Lla/b;->b:Lla/b;

    .line 2
    .line 3
    sget-object v1, Lla/b;->c:Lla/b;

    .line 4
    .line 5
    sget-object v2, Lla/b;->d:Lla/b;

    .line 6
    .line 7
    sget-object v3, Lla/b;->e:Lla/b;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lla/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lla/b;
    .locals 5

    .line 1
    invoke-static {}, Lla/b;->values()[Lla/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget-object v4, v3, Lla/b;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lla/b;
    .locals 1

    .line 1
    const-class v0, Lla/b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lla/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lla/b;
    .locals 1

    .line 1
    sget-object v0, Lla/b;->f:[Lla/b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lla/b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lla/b;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lla/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
