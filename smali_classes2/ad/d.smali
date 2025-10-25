.class public final Lad/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/i;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lad/i;

.field private final b:Lad/i$b;


# direct methods
.method public constructor <init>(Lad/i;Lad/i$b;)V
    .locals 1

    .line 1
    const-string v0, "left"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "element"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lad/d;->a:Lad/i;

    .line 15
    .line 16
    iput-object p2, p0, Lad/d;->b:Lad/i$b;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lad/i$b;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lad/d;->i(Ljava/lang/String;Lad/i$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final f(Lad/i$b;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lad/i$b;->getKey()Lad/i$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lad/d;->a(Lad/i$c;)Lad/i$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private final h(Lad/d;)Z
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p1, Lad/d;->b:Lad/i$b;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lad/d;->f(Lad/i$b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object p1, p1, Lad/d;->a:Lad/i;

    .line 12
    .line 13
    instance-of v0, p1, Lad/d;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p1, Lad/d;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Lad/i$b;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lad/d;->f(Lad/i$b;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method private static final i(Ljava/lang/String;Lad/i$b;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "acc"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "element"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, ", "

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_1
    return-object p0
.end method

.method private final size()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    move-object v1, p0

    .line 3
    :goto_0
    iget-object v1, v1, Lad/d;->a:Lad/i;

    .line 4
    .line 5
    instance-of v2, v1, Lad/d;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    check-cast v1, Lad/d;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_1
    if-nez v1, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0
.end method


# virtual methods
.method public a(Lad/i$c;)Lad/i$b;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    :goto_0
    iget-object v1, v0, Lad/d;->b:Lad/i$b;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lad/i$b;->a(Lad/i$c;)Lad/i$b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    iget-object v0, v0, Lad/d;->a:Lad/i;

    .line 17
    .line 18
    instance-of v1, v0, Lad/d;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast v0, Lad/d;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {v0, p1}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public e(Lad/i;)Lad/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lad/i$a;->b(Lad/i;Lad/i;)Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lad/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lad/d;

    .line 8
    .line 9
    invoke-direct {p1}, Lad/d;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p0}, Lad/d;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lad/d;->h(Lad/d;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    :goto_1
    return p1
.end method

.method public g(Lad/i$c;)Lad/i;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lad/d;->b:Lad/i$b;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lad/i$b;->a(Lad/i$c;)Lad/i$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lad/d;->a:Lad/i;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object v0, p0, Lad/d;->a:Lad/i;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lad/i;->g(Lad/i$c;)Lad/i;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lad/d;->a:Lad/i;

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    move-object p1, p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lad/j;->a:Lad/j;

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lad/d;->b:Lad/i$b;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance v0, Lad/d;

    .line 37
    .line 38
    iget-object v1, p0, Lad/d;->b:Lad/i$b;

    .line 39
    .line 40
    invoke-direct {v0, p1, v1}, Lad/d;-><init>(Lad/i;Lad/i$b;)V

    .line 41
    .line 42
    .line 43
    move-object p1, v0

    .line 44
    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lad/d;->a:Lad/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lad/d;->b:Lad/i$b;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public k(Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lad/d;->a:Lad/i;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lad/i;->k(Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lad/d;->b:Lad/i$b;

    .line 13
    .line 14
    invoke-interface {p2, p1, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x5b

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lad/c;

    .line 12
    .line 13
    invoke-direct {v1}, Lad/c;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {p0, v2, v1}, Lad/d;->k(Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x5d

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
