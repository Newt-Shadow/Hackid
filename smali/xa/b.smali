.class public Lxa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ld9/n;

.field protected b:Lxa/q;

.field private final c:I


# direct methods
.method public constructor <init>(Ld9/n;Lxa/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lxa/b;->c:I

    .line 6
    .line 7
    iput-object p1, p0, Lxa/b;->a:Ld9/n;

    .line 8
    .line 9
    iput-object p2, p0, Lxa/b;->b:Lxa/q;

    .line 10
    .line 11
    return-void
.end method

.method public static f(Ljava/util/List;Lxa/q;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ld9/p;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lxa/q;->f(Ld9/p;)Ld9/p;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ld9/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lxa/b;->a:Ld9/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld9/n;->b()Ld9/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lxa/b;->b:Lxa/q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v1, v2}, Lxa/q;->b(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lxa/b;->a:Ld9/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld9/n;->c()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lxa/b;->a:Ld9/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld9/n;->d()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lxa/b;->a:Ld9/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld9/n;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lxa/b;->a:Ld9/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld9/n;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
