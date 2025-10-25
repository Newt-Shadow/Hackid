.class final enum Lof/l$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lof/l$b;

.field public static final enum b:Lof/l$b;

.field private static final synthetic c:[Lof/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lof/l$b;

    .line 2
    .line 3
    const-string v1, "Stderr"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lof/l$b;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lof/l$b;->a:Lof/l$b;

    .line 10
    .line 11
    new-instance v0, Lof/l$b;

    .line 12
    .line 13
    const-string v1, "Stdout"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lof/l$b;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lof/l$b;->b:Lof/l$b;

    .line 20
    .line 21
    invoke-static {}, Lof/l$b;->a()[Lof/l$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lof/l$b;->c:[Lof/l$b;

    .line 26
    .line 27
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

.method private static synthetic a()[Lof/l$b;
    .locals 2

    .line 1
    sget-object v0, Lof/l$b;->a:Lof/l$b;

    .line 2
    .line 3
    sget-object v1, Lof/l$b;->b:Lof/l$b;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lof/l$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lof/l$b;
    .locals 1

    .line 1
    const-class v0, Lof/l$b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lof/l$b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lof/l$b;
    .locals 1

    .line 1
    sget-object v0, Lof/l$b;->c:[Lof/l$b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lof/l$b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lof/l$b;

    .line 8
    .line 9
    return-object v0
.end method
