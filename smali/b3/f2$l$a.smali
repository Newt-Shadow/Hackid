.class public final Lb3/f2$l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/f2$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lb3/f2$l;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lb3/f2$l;->a:Landroid/net/Uri;

    iput-object v0, p0, Lb3/f2$l$a;->a:Landroid/net/Uri;

    .line 4
    iget-object v0, p1, Lb3/f2$l;->b:Ljava/lang/String;

    iput-object v0, p0, Lb3/f2$l$a;->b:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lb3/f2$l;->c:Ljava/lang/String;

    iput-object v0, p0, Lb3/f2$l$a;->c:Ljava/lang/String;

    .line 6
    iget v0, p1, Lb3/f2$l;->d:I

    iput v0, p0, Lb3/f2$l$a;->d:I

    .line 7
    iget v0, p1, Lb3/f2$l;->e:I

    iput v0, p0, Lb3/f2$l$a;->e:I

    .line 8
    iget-object v0, p1, Lb3/f2$l;->f:Ljava/lang/String;

    iput-object v0, p0, Lb3/f2$l$a;->f:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lb3/f2$l;->g:Ljava/lang/String;

    iput-object p1, p0, Lb3/f2$l$a;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2$l;Lb3/f2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/f2$l$a;-><init>(Lb3/f2$l;)V

    return-void
.end method

.method static synthetic a(Lb3/f2$l$a;)Lb3/f2$k;
    .locals 0

    .line 1
    invoke-direct {p0}, Lb3/f2$l$a;->i()Lb3/f2$k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic b(Lb3/f2$l$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$l$a;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lb3/f2$l$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$l$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lb3/f2$l$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$l$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lb3/f2$l$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/f2$l$a;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lb3/f2$l$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/f2$l$a;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lb3/f2$l$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$l$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lb3/f2$l$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$l$a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private i()Lb3/f2$k;
    .locals 2

    .line 1
    new-instance v0, Lb3/f2$k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb3/f2$k;-><init>(Lb3/f2$l$a;Lb3/f2$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
