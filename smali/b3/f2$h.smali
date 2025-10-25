.class public abstract Lb3/f2$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Lb3/f2$f;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/String;

.field public final f:Lo6/q;

.field public final g:Ljava/util/List;

.field public final h:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lb3/f2$f;Lb3/f2$b;Ljava/util/List;Ljava/lang/String;Lo6/q;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lb3/f2$h;->a:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lb3/f2$h;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lb3/f2$h;->c:Lb3/f2$f;

    .line 6
    iput-object p5, p0, Lb3/f2$h;->d:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lb3/f2$h;->e:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lb3/f2$h;->f:Lo6/q;

    .line 9
    invoke-static {}, Lo6/q;->r()Lo6/q$a;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 11
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb3/f2$l;

    invoke-virtual {p3}, Lb3/f2$l;->a()Lb3/f2$l$a;

    move-result-object p3

    invoke-static {p3}, Lb3/f2$l$a;->a(Lb3/f2$l$a;)Lb3/f2$k;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo6/q$a;->h(Ljava/lang/Object;)Lo6/q$a;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lo6/q$a;->k()Lo6/q;

    move-result-object p1

    iput-object p1, p0, Lb3/f2$h;->g:Ljava/util/List;

    .line 13
    iput-object p8, p0, Lb3/f2$h;->h:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lb3/f2$f;Lb3/f2$b;Ljava/util/List;Ljava/lang/String;Lo6/q;Ljava/lang/Object;Lb3/f2$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lb3/f2$h;-><init>(Landroid/net/Uri;Ljava/lang/String;Lb3/f2$f;Lb3/f2$b;Ljava/util/List;Ljava/lang/String;Lo6/q;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lb3/f2$h;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lb3/f2$h;

    .line 12
    .line 13
    iget-object v1, p0, Lb3/f2$h;->a:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v3, p1, Lb3/f2$h;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lb3/f2$h;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lb3/f2$h;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lb3/f2$h;->c:Lb3/f2$f;

    .line 34
    .line 35
    iget-object v3, p1, Lb3/f2$h;->c:Lb3/f2$f;

    .line 36
    .line 37
    invoke-static {v1, v3}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v1, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lb3/f2$h;->d:Ljava/util/List;

    .line 51
    .line 52
    iget-object v3, p1, Lb3/f2$h;->d:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget-object v1, p0, Lb3/f2$h;->e:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p1, Lb3/f2$h;->e:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v3}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    iget-object v1, p0, Lb3/f2$h;->f:Lo6/q;

    .line 71
    .line 72
    iget-object v3, p1, Lb3/f2$h;->f:Lo6/q;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Lo6/q;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    iget-object v1, p0, Lb3/f2$h;->h:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object p1, p1, Lb3/f2$h;->h:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {v1, p1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move v0, v2

    .line 92
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/f2$h;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lb3/f2$h;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lb3/f2$h;->c:Lb3/f2$f;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Lb3/f2$f;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    add-int/2addr v0, v2

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-object v1, p0, Lb3/f2$h;->d:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v0, v1

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget-object v1, p0, Lb3/f2$h;->e:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    move v1, v2

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_2
    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    .line 61
    iget-object v1, p0, Lb3/f2$h;->f:Lo6/q;

    .line 62
    .line 63
    invoke-virtual {v1}, Lo6/q;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    .line 70
    iget-object v1, p0, Lb3/f2$h;->h:Ljava/lang/Object;

    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    :goto_3
    add-int/2addr v0, v2

    .line 80
    return v0
.end method
