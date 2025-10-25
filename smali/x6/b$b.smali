.class public abstract enum Lx6/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lx6/b$b;

.field public static final enum b:Lx6/b$b;

.field private static final synthetic c:[Lx6/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lx6/b$b$a;

    .line 2
    .line 3
    const-string v1, "ALGORITHM_NOT_FIPS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lx6/b$b$a;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lx6/b$b;->a:Lx6/b$b;

    .line 10
    .line 11
    new-instance v1, Lx6/b$b$b;

    .line 12
    .line 13
    const-string v2, "ALGORITHM_REQUIRES_BORINGCRYPTO"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lx6/b$b$b;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lx6/b$b;->b:Lx6/b$b;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lx6/b$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lx6/b$b;->c:[Lx6/b$b;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILx6/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lx6/b$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx6/b$b;
    .locals 1

    .line 1
    const-class v0, Lx6/b$b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lx6/b$b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lx6/b$b;
    .locals 1

    .line 1
    sget-object v0, Lx6/b$b;->c:[Lx6/b$b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lx6/b$b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lx6/b$b;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method
