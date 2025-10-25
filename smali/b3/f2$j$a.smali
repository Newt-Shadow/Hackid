.class public final Lb3/f2$j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/f2$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lb3/f2$j$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$j$a;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lb3/f2$j$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$j$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lb3/f2$j$a;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/f2$j$a;->c:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d()Lb3/f2$j;
    .locals 2

    .line 1
    new-instance v0, Lb3/f2$j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb3/f2$j;-><init>(Lb3/f2$j$a;Lb3/f2$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public e(Landroid/os/Bundle;)Lb3/f2$j$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/f2$j$a;->c:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Landroid/net/Uri;)Lb3/f2$j$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/f2$j$a;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lb3/f2$j$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/f2$j$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
