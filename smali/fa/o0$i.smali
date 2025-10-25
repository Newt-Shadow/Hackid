.class final enum Lfa/o0$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "i"
.end annotation


# static fields
.field public static final enum b:Lfa/o0$i;

.field private static final synthetic c:[Lfa/o0$i;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lfa/o0$i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "orientation_changed"

    .line 5
    .line 6
    const-string v3, "ORIENTATION_CHANGED"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lfa/o0$i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lfa/o0$i;->b:Lfa/o0$i;

    .line 12
    .line 13
    invoke-static {}, Lfa/o0$i;->a()[Lfa/o0$i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lfa/o0$i;->c:[Lfa/o0$i;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lfa/o0$i;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static synthetic a()[Lfa/o0$i;
    .locals 1

    .line 1
    sget-object v0, Lfa/o0$i;->b:Lfa/o0$i;

    .line 2
    .line 3
    filled-new-array {v0}, [Lfa/o0$i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static synthetic b(Lfa/o0$i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfa/o0$i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfa/o0$i;
    .locals 1

    .line 1
    const-class v0, Lfa/o0$i;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfa/o0$i;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lfa/o0$i;
    .locals 1

    .line 1
    sget-object v0, Lfa/o0$i;->c:[Lfa/o0$i;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lfa/o0$i;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lfa/o0$i;

    .line 8
    .line 9
    return-object v0
.end method
