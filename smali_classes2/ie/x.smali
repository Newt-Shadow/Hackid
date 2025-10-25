.class public final Lie/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lge/d;
.implements Lie/c;


# instance fields
.field private final a:Lge/d;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lge/d;)V
    .locals 2

    .line 1
    const-string v0, "original"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lie/x;->a:Lge/d;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lge/d;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x3f

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lie/x;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Lie/n;->a(Lge/d;)Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lie/x;->c:Ljava/util/Set;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->c:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lie/x;->a:Lge/d;

    invoke-interface {v0, p1}, Lge/d;->d(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public e()Lge/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    invoke-interface {v0}, Lge/d;->e()Lge/f;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lie/x;

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
    iget-object v1, p0, Lie/x;->a:Lge/d;

    .line 12
    .line 13
    check-cast p1, Lie/x;

    .line 14
    .line 15
    iget-object p1, p1, Lie/x;->a:Lge/d;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    invoke-interface {v0}, Lge/d;->f()I

    move-result v0

    return v0
.end method

.method public g(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    invoke-interface {v0, p1}, Lge/d;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    invoke-interface {v0}, Lge/d;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    invoke-interface {v0, p1}, Lge/d;->h(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    return v0
.end method

.method public i(I)Lge/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    invoke-interface {v0, p1}, Lge/d;->i(I)Lge/d;

    move-result-object p1

    return-object p1
.end method

.method public isInline()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    invoke-interface {v0}, Lge/d;->isInline()Z

    move-result v0

    return v0
.end method

.method public j(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    invoke-interface {v0, p1}, Lge/d;->j(I)Z

    move-result p1

    return p1
.end method

.method public final k()Lge/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/x;->a:Lge/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lie/x;->a:Lge/d;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x3f

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
