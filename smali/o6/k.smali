.class public abstract Lo6/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/k$b;
    }
.end annotation


# static fields
.field private static final a:Lo6/k;

.field private static final b:Lo6/k;

.field private static final c:Lo6/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo6/k$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lo6/k$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo6/k;->a:Lo6/k;

    .line 7
    .line 8
    new-instance v0, Lo6/k$b;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, Lo6/k$b;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lo6/k;->b:Lo6/k;

    .line 15
    .line 16
    new-instance v0, Lo6/k$b;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Lo6/k$b;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lo6/k;->c:Lo6/k;

    .line 23
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo6/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo6/k;-><init>()V

    return-void
.end method

.method static synthetic a()Lo6/k;
    .locals 1

    .line 1
    sget-object v0, Lo6/k;->b:Lo6/k;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lo6/k;
    .locals 1

    .line 1
    sget-object v0, Lo6/k;->c:Lo6/k;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Lo6/k;
    .locals 1

    .line 1
    sget-object v0, Lo6/k;->a:Lo6/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public static j()Lo6/k;
    .locals 1

    .line 1
    sget-object v0, Lo6/k;->a:Lo6/k;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract d(II)Lo6/k;
.end method

.method public abstract e(JJ)Lo6/k;
.end method

.method public abstract f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lo6/k;
.end method

.method public abstract g(ZZ)Lo6/k;
.end method

.method public abstract h(ZZ)Lo6/k;
.end method

.method public abstract i()I
.end method
