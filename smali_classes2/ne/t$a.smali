.class public final Lne/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/t$a$a;
    }
.end annotation


# static fields
.field public static final i:Lne/t$a$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private final f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lne/t$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lne/t$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lne/t$a;->i:Lne/t$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lne/t$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lne/t$a;->c:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lne/t$a;->e:I

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lne/t$a;->f:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final b()I
    .locals 2

    .line 1
    iget v0, p0, Lne/t$a;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lne/t;->k:Lne/t$b;

    .line 8
    .line 9
    iget-object v1, p0, Lne/t$a;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lne/t$b;->c(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    return v0
.end method

.method private final m(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "%2e"

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    return v1
.end method

.method private final n(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, ".."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "%2e."

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, ".%2e"

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "%2e%2e"

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :cond_1
    :goto_0
    return v1
.end method

.method private final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lne/t$a;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    const-string v1, ""

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lne/t$a;->f:Ljava/util/List;

    .line 29
    .line 30
    check-cast v0, Ljava/util/Collection;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    xor-int/2addr v0, v2

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lne/t$a;->f:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sub-int/2addr v3, v2

    .line 46
    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Lne/t$a;->f:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method private final s(Ljava/lang/String;IIZZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    sget-object v1, Lne/t;->k:Lne/t$b;

    .line 3
    .line 4
    const-string v5, " \"<>^`{}|/\\?#"

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v9, 0x0

    .line 9
    const/4 v10, 0x0

    .line 10
    const/16 v11, 0xf0

    .line 11
    .line 12
    const/4 v12, 0x0

    .line 13
    move-object v2, p1

    .line 14
    move v3, p2

    .line 15
    move/from16 v4, p3

    .line 16
    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    invoke-static/range {v1 .. v12}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v1}, Lne/t$a;->m(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-direct {p0, v1}, Lne/t$a;->n(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lne/t$a;->q()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v2, v0, Lne/t$a;->f:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x1

    .line 47
    sub-int/2addr v3, v4

    .line 48
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/CharSequence;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    move v2, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v2, 0x0

    .line 63
    :goto_0
    if-eqz v2, :cond_3

    .line 64
    .line 65
    iget-object v2, v0, Lne/t$a;->f:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    sub-int/2addr v3, v4

    .line 72
    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v2, v0, Lne/t$a;->f:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :goto_1
    if-eqz p4, :cond_4

    .line 82
    .line 83
    iget-object v1, v0, Lne/t$a;->f:Ljava/util/List;

    .line 84
    .line 85
    const-string v2, ""

    .line 86
    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    return-void
.end method

.method private final u(Ljava/lang/String;II)V
    .locals 10

    .line 1
    if-ne p2, p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x2f

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/16 v1, 0x5c

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lne/t$a;->f:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sub-int/2addr v1, v3

    .line 27
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    iget-object v0, p0, Lne/t$a;->f:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lne/t$a;->f:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 p2, p2, 0x1

    .line 42
    .line 43
    :cond_3
    :goto_1
    move v6, p2

    .line 44
    :goto_2
    if-ge v6, p3, :cond_5

    .line 45
    .line 46
    const-string p2, "/\\"

    .line 47
    .line 48
    invoke-static {p1, p2, v6, p3}, Loe/d;->p(Ljava/lang/String;Ljava/lang/String;II)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-ge p2, p3, :cond_4

    .line 53
    .line 54
    move v0, v3

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/4 v0, 0x0

    .line 57
    :goto_3
    const/4 v9, 0x1

    .line 58
    move-object v4, p0

    .line 59
    move-object v5, p1

    .line 60
    move v7, p2

    .line 61
    move v8, v0

    .line 62
    invoke-direct/range {v4 .. v9}, Lne/t$a;->s(Ljava/lang/String;IIZZ)V

    .line 63
    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    add-int/lit8 v6, p2, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/t$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final B(I)V
    .locals 0

    .line 1
    iput p1, p0, Lne/t$a;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/t$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final D(Ljava/lang/String;)Lne/t$a;
    .locals 13

    .line 1
    const-string v0, "username"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lne/t;->k:Lne/t$b;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    const/16 v11, 0xfb

    .line 18
    .line 19
    const/4 v12, 0x0

    .line 20
    move-object v2, p1

    .line 21
    invoke-static/range {v1 .. v12}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lne/t$a;->z(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final a()Lne/t;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lne/t$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v2, :cond_6

    .line 6
    .line 7
    sget-object v1, Lne/t;->k:Lne/t$b;

    .line 8
    .line 9
    iget-object v4, v0, Lne/t$a;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x7

    .line 15
    const/4 v9, 0x0

    .line 16
    move-object v3, v1

    .line 17
    invoke-static/range {v3 .. v9}, Lne/t$b;->g(Lne/t$b;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    iget-object v4, v0, Lne/t$a;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static/range {v3 .. v9}, Lne/t$b;->g(Lne/t$b;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v5, v0, Lne/t$a;->d:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v5, :cond_5

    .line 30
    .line 31
    invoke-direct/range {p0 .. p0}, Lne/t$a;->b()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iget-object v1, v0, Lne/t$a;->f:Ljava/util/List;

    .line 36
    .line 37
    check-cast v1, Ljava/lang/Iterable;

    .line 38
    .line 39
    new-instance v7, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v3, 0xa

    .line 42
    .line 43
    invoke-static {v1, v3}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_0

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    move-object v12, v8

    .line 65
    check-cast v12, Ljava/lang/String;

    .line 66
    .line 67
    sget-object v11, Lne/t;->k:Lne/t$b;

    .line 68
    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v14, 0x0

    .line 71
    const/4 v15, 0x0

    .line 72
    const/16 v16, 0x7

    .line 73
    .line 74
    const/16 v17, 0x0

    .line 75
    .line 76
    invoke-static/range {v11 .. v17}, Lne/t$b;->g(Lne/t$b;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, v0, Lne/t$a;->g:Ljava/util/List;

    .line 85
    .line 86
    const/4 v8, 0x0

    .line 87
    if-nez v1, :cond_1

    .line 88
    .line 89
    move-object v9, v8

    .line 90
    goto :goto_3

    .line 91
    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    .line 92
    .line 93
    new-instance v9, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {v1, v3}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v12, v3

    .line 117
    check-cast v12, Ljava/lang/String;

    .line 118
    .line 119
    if-nez v12, :cond_2

    .line 120
    .line 121
    move-object v3, v8

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    sget-object v11, Lne/t;->k:Lne/t$b;

    .line 124
    .line 125
    const/4 v13, 0x0

    .line 126
    const/4 v14, 0x0

    .line 127
    const/4 v15, 0x1

    .line 128
    const/16 v16, 0x3

    .line 129
    .line 130
    const/16 v17, 0x0

    .line 131
    .line 132
    invoke-static/range {v11 .. v17}, Lne/t$b;->g(Lne/t$b;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :goto_2
    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    :goto_3
    iget-object v12, v0, Lne/t$a;->h:Ljava/lang/String;

    .line 141
    .line 142
    if-nez v12, :cond_4

    .line 143
    .line 144
    move-object v11, v8

    .line 145
    goto :goto_4

    .line 146
    :cond_4
    sget-object v11, Lne/t;->k:Lne/t$b;

    .line 147
    .line 148
    const/4 v13, 0x0

    .line 149
    const/4 v14, 0x0

    .line 150
    const/4 v15, 0x0

    .line 151
    const/16 v16, 0x7

    .line 152
    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    invoke-static/range {v11 .. v17}, Lne/t$b;->g(Lne/t$b;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    move-object v11, v1

    .line 160
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lne/t$a;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    new-instance v13, Lne/t;

    .line 165
    .line 166
    move-object v1, v13

    .line 167
    move-object v3, v10

    .line 168
    move-object v8, v9

    .line 169
    move-object v9, v11

    .line 170
    move-object v10, v12

    .line 171
    invoke-direct/range {v1 .. v10}, Lne/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-object v13

    .line 175
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    const-string v2, "host == null"

    .line 178
    .line 179
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v1

    .line 183
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    const-string v2, "scheme == null"

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v1
.end method

.method public final c(Ljava/lang/String;)Lne/t$a;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v13, Lne/t;->k:Lne/t$b;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, " \"\'<>#"

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/16 v11, 0xd3

    .line 17
    .line 18
    const/4 v12, 0x0

    .line 19
    move-object v1, v13

    .line 20
    move-object v2, p1

    .line 21
    invoke-static/range {v1 .. v12}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v13, p1}, Lne/t$b;->i(Ljava/lang/String;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-virtual {p0, v0}, Lne/t$a;->y(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/t$a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/t$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/t$a;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/t$a;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/t$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/t$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lne/t$a;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/t$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Ljava/lang/String;)Lne/t$a;
    .locals 8

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lne/t;->k:Lne/t$b;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x7

    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v2, p1

    .line 14
    invoke-static/range {v1 .. v7}, Lne/t$b;->g(Lne/t$b;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Loe/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lne/t$a;->A(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v1, "unexpected host: "

    .line 31
    .line 32
    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public final o(Lne/t;Ljava/lang/String;)Lne/t$a;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p2

    .line 4
    .line 5
    const-string v1, "input"

    .line 6
    .line 7
    invoke-static {v13, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v14, 0x0

    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v13, v14, v14, v1, v2}, Loe/d;->z(Ljava/lang/String;IIILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x2

    .line 18
    invoke-static {v13, v1, v14, v3, v2}, Loe/d;->B(Ljava/lang/String;IIILjava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v15

    .line 22
    sget-object v2, Lne/t$a;->i:Lne/t$a$a;

    .line 23
    .line 24
    invoke-static {v2, v13, v1, v15}, Lne/t$a$a;->c(Lne/t$a$a;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const-string v12, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 29
    .line 30
    const/4 v11, 0x1

    .line 31
    const/4 v10, -0x1

    .line 32
    if-eq v4, v10, :cond_2

    .line 33
    .line 34
    const-string v5, "https:"

    .line 35
    .line 36
    invoke-static {v13, v5, v1, v11}, Lrd/n;->E(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    const-string v4, "https"

    .line 43
    .line 44
    iput-object v4, v0, Lne/t$a;->a:Ljava/lang/String;

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x6

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v5, "http:"

    .line 50
    .line 51
    invoke-static {v13, v5, v1, v11}, Lrd/n;->E(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    const-string v4, "http"

    .line 58
    .line 59
    iput-object v4, v0, Lne/t$a;->a:Ljava/lang/String;

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x5

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v13, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3, v12}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v3, 0x27

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_2
    if-eqz p1, :cond_14

    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Lne/t;->p()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iput-object v4, v0, Lne/t$a;->a:Ljava/lang/String;

    .line 106
    .line 107
    :goto_0
    invoke-static {v2, v13, v1, v15}, Lne/t$a$a;->d(Lne/t$a$a;Ljava/lang/String;II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const/16 v9, 0x3f

    .line 112
    .line 113
    const/16 v8, 0x23

    .line 114
    .line 115
    if-ge v2, v3, :cond_6

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Lne/t;->p()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-object v4, v0, Lne/t$a;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_3

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lne/t;->g()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iput-object v2, v0, Lne/t$a;->b:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Lne/t;->c()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iput-object v2, v0, Lne/t$a;->c:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual/range {p1 .. p1}, Lne/t;->h()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, v0, Lne/t$a;->d:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Lne/t;->l()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    iput v2, v0, Lne/t$a;->e:I

    .line 155
    .line 156
    iget-object v2, v0, Lne/t$a;->f:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 159
    .line 160
    .line 161
    iget-object v2, v0, Lne/t$a;->f:Ljava/util/List;

    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lne/t;->e()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Ljava/util/Collection;

    .line 168
    .line 169
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    .line 171
    .line 172
    if-eq v1, v15, :cond_4

    .line 173
    .line 174
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-ne v2, v8, :cond_5

    .line 179
    .line 180
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lne/t;->f()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v0, v2}, Lne/t$a;->c(Ljava/lang/String;)Lne/t$a;

    .line 185
    .line 186
    .line 187
    :cond_5
    move/from16 v19, v11

    .line 188
    .line 189
    move/from16 v20, v15

    .line 190
    .line 191
    goto/16 :goto_9

    .line 192
    .line 193
    :cond_6
    :goto_1
    add-int/2addr v1, v2

    .line 194
    move v7, v1

    .line 195
    move/from16 v16, v14

    .line 196
    .line 197
    move/from16 v17, v16

    .line 198
    .line 199
    :goto_2
    const-string v1, "@/\\?#"

    .line 200
    .line 201
    invoke-static {v13, v1, v7, v15}, Loe/d;->p(Ljava/lang/String;Ljava/lang/String;II)I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eq v6, v15, :cond_7

    .line 206
    .line 207
    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    goto :goto_3

    .line 212
    :cond_7
    move v1, v10

    .line 213
    :goto_3
    if-eq v1, v10, :cond_c

    .line 214
    .line 215
    if-eq v1, v8, :cond_c

    .line 216
    .line 217
    const/16 v2, 0x2f

    .line 218
    .line 219
    if-eq v1, v2, :cond_c

    .line 220
    .line 221
    const/16 v2, 0x5c

    .line 222
    .line 223
    if-eq v1, v2, :cond_c

    .line 224
    .line 225
    if-eq v1, v9, :cond_c

    .line 226
    .line 227
    const/16 v2, 0x40

    .line 228
    .line 229
    if-eq v1, v2, :cond_8

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_8
    const-string v5, "%40"

    .line 233
    .line 234
    if-nez v16, :cond_b

    .line 235
    .line 236
    const/16 v1, 0x3a

    .line 237
    .line 238
    invoke-static {v13, v1, v7, v6}, Loe/d;->o(Ljava/lang/String;CII)I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    sget-object v18, Lne/t;->k:Lne/t$b;

    .line 243
    .line 244
    const-string v19, " \"\':;<=>@[]^`{}|/\\?#"

    .line 245
    .line 246
    const/16 v20, 0x1

    .line 247
    .line 248
    const/16 v21, 0x0

    .line 249
    .line 250
    const/16 v22, 0x0

    .line 251
    .line 252
    const/16 v23, 0x0

    .line 253
    .line 254
    const/16 v24, 0x0

    .line 255
    .line 256
    const/16 v25, 0xf0

    .line 257
    .line 258
    const/16 v26, 0x0

    .line 259
    .line 260
    move-object/from16 v1, v18

    .line 261
    .line 262
    move-object/from16 v2, p2

    .line 263
    .line 264
    move v3, v7

    .line 265
    move v7, v4

    .line 266
    move-object v14, v5

    .line 267
    move-object/from16 v5, v19

    .line 268
    .line 269
    move/from16 v28, v6

    .line 270
    .line 271
    move/from16 v6, v20

    .line 272
    .line 273
    move/from16 v29, v7

    .line 274
    .line 275
    move/from16 v7, v21

    .line 276
    .line 277
    move/from16 v8, v22

    .line 278
    .line 279
    move/from16 v9, v23

    .line 280
    .line 281
    move-object/from16 v10, v24

    .line 282
    .line 283
    move/from16 v19, v11

    .line 284
    .line 285
    move/from16 v11, v25

    .line 286
    .line 287
    move/from16 v20, v15

    .line 288
    .line 289
    move-object v15, v12

    .line 290
    move-object/from16 v12, v26

    .line 291
    .line 292
    invoke-static/range {v1 .. v12}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    if-eqz v17, :cond_9

    .line 297
    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    iget-object v3, v0, Lne/t$a;->b:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    :cond_9
    iput-object v1, v0, Lne/t$a;->b:Ljava/lang/String;

    .line 319
    .line 320
    move/from16 v14, v28

    .line 321
    .line 322
    move/from16 v1, v29

    .line 323
    .line 324
    if-eq v1, v14, :cond_a

    .line 325
    .line 326
    add-int/lit8 v3, v1, 0x1

    .line 327
    .line 328
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 329
    .line 330
    const/4 v6, 0x1

    .line 331
    const/4 v7, 0x0

    .line 332
    const/4 v8, 0x0

    .line 333
    const/4 v9, 0x0

    .line 334
    const/4 v10, 0x0

    .line 335
    const/16 v11, 0xf0

    .line 336
    .line 337
    const/4 v12, 0x0

    .line 338
    move-object/from16 v1, v18

    .line 339
    .line 340
    move-object/from16 v2, p2

    .line 341
    .line 342
    move v4, v14

    .line 343
    invoke-static/range {v1 .. v12}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    iput-object v1, v0, Lne/t$a;->c:Ljava/lang/String;

    .line 348
    .line 349
    move/from16 v11, v19

    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_a
    move/from16 v11, v16

    .line 353
    .line 354
    :goto_4
    move/from16 v16, v11

    .line 355
    .line 356
    move-object/from16 v18, v15

    .line 357
    .line 358
    move/from16 v17, v19

    .line 359
    .line 360
    move v15, v14

    .line 361
    goto :goto_5

    .line 362
    :cond_b
    move-object v14, v5

    .line 363
    move/from16 v19, v11

    .line 364
    .line 365
    move/from16 v20, v15

    .line 366
    .line 367
    move-object v15, v12

    .line 368
    move v12, v6

    .line 369
    new-instance v11, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    iget-object v1, v0, Lne/t$a;->c:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    sget-object v1, Lne/t;->k:Lne/t$b;

    .line 383
    .line 384
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 385
    .line 386
    const/4 v6, 0x1

    .line 387
    const/4 v8, 0x0

    .line 388
    const/4 v9, 0x0

    .line 389
    const/4 v10, 0x0

    .line 390
    const/4 v14, 0x0

    .line 391
    const/16 v18, 0xf0

    .line 392
    .line 393
    const/16 v21, 0x0

    .line 394
    .line 395
    move-object/from16 v2, p2

    .line 396
    .line 397
    move v3, v7

    .line 398
    move v4, v12

    .line 399
    move v7, v8

    .line 400
    move v8, v9

    .line 401
    move v9, v10

    .line 402
    move-object v10, v14

    .line 403
    move-object v14, v11

    .line 404
    move/from16 v11, v18

    .line 405
    .line 406
    move-object/from16 v18, v15

    .line 407
    .line 408
    move v15, v12

    .line 409
    move-object/from16 v12, v21

    .line 410
    .line 411
    invoke-static/range {v1 .. v12}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    iput-object v1, v0, Lne/t$a;->c:Ljava/lang/String;

    .line 423
    .line 424
    :goto_5
    add-int/lit8 v7, v15, 0x1

    .line 425
    .line 426
    move-object/from16 v12, v18

    .line 427
    .line 428
    move/from16 v11, v19

    .line 429
    .line 430
    move/from16 v15, v20

    .line 431
    .line 432
    const/16 v8, 0x23

    .line 433
    .line 434
    const/16 v9, 0x3f

    .line 435
    .line 436
    const/4 v10, -0x1

    .line 437
    const/4 v14, 0x0

    .line 438
    goto/16 :goto_2

    .line 439
    .line 440
    :cond_c
    move/from16 v19, v11

    .line 441
    .line 442
    move-object/from16 v18, v12

    .line 443
    .line 444
    move/from16 v20, v15

    .line 445
    .line 446
    move v15, v6

    .line 447
    sget-object v8, Lne/t$a;->i:Lne/t$a$a;

    .line 448
    .line 449
    invoke-static {v8, v13, v7, v15}, Lne/t$a$a;->b(Lne/t$a$a;Ljava/lang/String;II)I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    add-int/lit8 v10, v9, 0x1

    .line 454
    .line 455
    const/16 v11, 0x22

    .line 456
    .line 457
    if-ge v10, v15, :cond_f

    .line 458
    .line 459
    sget-object v1, Lne/t;->k:Lne/t$b;

    .line 460
    .line 461
    const/4 v5, 0x0

    .line 462
    const/4 v6, 0x4

    .line 463
    const/4 v12, 0x0

    .line 464
    move-object/from16 v2, p2

    .line 465
    .line 466
    move v3, v7

    .line 467
    move v4, v9

    .line 468
    move v14, v7

    .line 469
    move-object v7, v12

    .line 470
    invoke-static/range {v1 .. v7}, Lne/t$b;->g(Lne/t$b;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-static {v1}, Loe/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    iput-object v1, v0, Lne/t$a;->d:Ljava/lang/String;

    .line 479
    .line 480
    invoke-static {v8, v13, v10, v15}, Lne/t$a$a;->a(Lne/t$a$a;Ljava/lang/String;II)I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    iput v1, v0, Lne/t$a;->e:I

    .line 485
    .line 486
    const/4 v2, -0x1

    .line 487
    if-eq v1, v2, :cond_d

    .line 488
    .line 489
    move/from16 v1, v19

    .line 490
    .line 491
    goto :goto_6

    .line 492
    :cond_d
    const/4 v1, 0x0

    .line 493
    :goto_6
    if-eqz v1, :cond_e

    .line 494
    .line 495
    move-object/from16 v8, v18

    .line 496
    .line 497
    goto :goto_7

    .line 498
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .line 502
    .line 503
    const-string v2, "Invalid URL port: \""

    .line 504
    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v13, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    move-object/from16 v8, v18

    .line 513
    .line 514
    invoke-static {v2, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 528
    .line 529
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    throw v2

    .line 537
    :cond_f
    move v14, v7

    .line 538
    move-object/from16 v8, v18

    .line 539
    .line 540
    sget-object v10, Lne/t;->k:Lne/t$b;

    .line 541
    .line 542
    const/4 v5, 0x0

    .line 543
    const/4 v6, 0x4

    .line 544
    const/4 v7, 0x0

    .line 545
    move-object v1, v10

    .line 546
    move-object/from16 v2, p2

    .line 547
    .line 548
    move v3, v14

    .line 549
    move v4, v9

    .line 550
    invoke-static/range {v1 .. v7}, Lne/t$b;->g(Lne/t$b;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-static {v1}, Loe/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    iput-object v1, v0, Lne/t$a;->d:Ljava/lang/String;

    .line 559
    .line 560
    iget-object v1, v0, Lne/t$a;->a:Ljava/lang/String;

    .line 561
    .line 562
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v10, v1}, Lne/t$b;->c(Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    iput v1, v0, Lne/t$a;->e:I

    .line 570
    .line 571
    :goto_7
    iget-object v1, v0, Lne/t$a;->d:Ljava/lang/String;

    .line 572
    .line 573
    if-eqz v1, :cond_10

    .line 574
    .line 575
    move/from16 v27, v19

    .line 576
    .line 577
    goto :goto_8

    .line 578
    :cond_10
    const/16 v27, 0x0

    .line 579
    .line 580
    :goto_8
    if-eqz v27, :cond_13

    .line 581
    .line 582
    move v1, v15

    .line 583
    :goto_9
    const-string v2, "?#"

    .line 584
    .line 585
    move/from16 v14, v20

    .line 586
    .line 587
    invoke-static {v13, v2, v1, v14}, Loe/d;->p(Ljava/lang/String;Ljava/lang/String;II)I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    invoke-direct {v0, v13, v1, v2}, Lne/t$a;->u(Ljava/lang/String;II)V

    .line 592
    .line 593
    .line 594
    if-ge v2, v14, :cond_11

    .line 595
    .line 596
    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    const/16 v3, 0x3f

    .line 601
    .line 602
    if-ne v1, v3, :cond_11

    .line 603
    .line 604
    const/16 v15, 0x23

    .line 605
    .line 606
    invoke-static {v13, v15, v2, v14}, Loe/d;->o(Ljava/lang/String;CII)I

    .line 607
    .line 608
    .line 609
    move-result v16

    .line 610
    sget-object v12, Lne/t;->k:Lne/t$b;

    .line 611
    .line 612
    add-int/lit8 v3, v2, 0x1

    .line 613
    .line 614
    const-string v5, " \"\'<>#"

    .line 615
    .line 616
    const/4 v6, 0x1

    .line 617
    const/4 v7, 0x0

    .line 618
    const/4 v8, 0x1

    .line 619
    const/4 v9, 0x0

    .line 620
    const/4 v10, 0x0

    .line 621
    const/16 v11, 0xd0

    .line 622
    .line 623
    const/16 v17, 0x0

    .line 624
    .line 625
    move-object v1, v12

    .line 626
    move-object/from16 v2, p2

    .line 627
    .line 628
    move/from16 v4, v16

    .line 629
    .line 630
    move-object v15, v12

    .line 631
    move-object/from16 v12, v17

    .line 632
    .line 633
    invoke-static/range {v1 .. v12}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-virtual {v15, v1}, Lne/t$b;->i(Ljava/lang/String;)Ljava/util/List;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    iput-object v1, v0, Lne/t$a;->g:Ljava/util/List;

    .line 642
    .line 643
    move/from16 v2, v16

    .line 644
    .line 645
    :cond_11
    if-ge v2, v14, :cond_12

    .line 646
    .line 647
    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    .line 648
    .line 649
    .line 650
    move-result v1

    .line 651
    const/16 v3, 0x23

    .line 652
    .line 653
    if-ne v1, v3, :cond_12

    .line 654
    .line 655
    sget-object v1, Lne/t;->k:Lne/t$b;

    .line 656
    .line 657
    add-int/lit8 v3, v2, 0x1

    .line 658
    .line 659
    const-string v5, ""

    .line 660
    .line 661
    const/4 v6, 0x1

    .line 662
    const/4 v7, 0x0

    .line 663
    const/4 v8, 0x0

    .line 664
    const/4 v9, 0x1

    .line 665
    const/4 v10, 0x0

    .line 666
    const/16 v11, 0xb0

    .line 667
    .line 668
    const/4 v12, 0x0

    .line 669
    move-object/from16 v2, p2

    .line 670
    .line 671
    move v4, v14

    .line 672
    invoke-static/range {v1 .. v12}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    iput-object v1, v0, Lne/t$a;->h:Ljava/lang/String;

    .line 677
    .line 678
    :cond_12
    return-object v0

    .line 679
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .line 683
    .line 684
    const-string v2, "Invalid URL host: \""

    .line 685
    .line 686
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v13, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    invoke-static {v2, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 707
    .line 708
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    throw v2

    .line 716
    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    const/4 v2, 0x6

    .line 721
    if-le v1, v2, :cond_15

    .line 722
    .line 723
    invoke-static {v13, v2}, Lrd/n;->S0(Ljava/lang/String;I)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    const-string v2, "..."

    .line 728
    .line 729
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    move-object v13, v1

    .line 734
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 735
    .line 736
    const-string v2, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    .line 737
    .line 738
    invoke-static {v2, v13}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    throw v1
.end method

.method public final p(Ljava/lang/String;)Lne/t$a;
    .locals 13

    .line 1
    const-string v0, "password"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lne/t;->k:Lne/t$b;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    const/16 v11, 0xfb

    .line 18
    .line 19
    const/4 v12, 0x0

    .line 20
    move-object v2, p1

    .line 21
    invoke-static/range {v1 .. v12}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lne/t$a;->x(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final r(I)Lne/t$a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-gt v1, p1, :cond_0

    .line 4
    .line 5
    const/high16 v2, 0x10000

    .line 6
    .line 7
    if-ge p1, v2, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lne/t$a;->B(I)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    const-string v0, "unexpected port: "

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public final t()Lne/t$a;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lne/t$a;->i()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move-object v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v3, Lrd/l;

    .line 13
    .line 14
    const-string v4, "[\"<>^`{|}]"

    .line 15
    .line 16
    invoke-direct {v3, v4}, Lrd/l;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, ""

    .line 20
    .line 21
    invoke-virtual {v3, v1, v4}, Lrd/l;->f(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Lne/t$a;->A(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lne/t$a;->f()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x0

    .line 37
    move v4, v3

    .line 38
    :goto_1
    if-ge v4, v1, :cond_1

    .line 39
    .line 40
    add-int/lit8 v5, v4, 0x1

    .line 41
    .line 42
    invoke-virtual/range {p0 .. p0}, Lne/t$a;->f()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    sget-object v7, Lne/t;->k:Lne/t$b;

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lne/t$a;->f()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Ljava/lang/String;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    const-string v11, "[]"

    .line 61
    .line 62
    const/4 v12, 0x1

    .line 63
    const/4 v13, 0x1

    .line 64
    const/4 v14, 0x0

    .line 65
    const/4 v15, 0x0

    .line 66
    const/16 v16, 0x0

    .line 67
    .line 68
    const/16 v17, 0xe3

    .line 69
    .line 70
    const/16 v18, 0x0

    .line 71
    .line 72
    invoke-static/range {v7 .. v18}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-interface {v6, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move v4, v5

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lne/t$a;->g()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    :goto_2
    if-ge v3, v4, :cond_3

    .line 92
    .line 93
    add-int/lit8 v5, v3, 0x1

    .line 94
    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    move-object v8, v6

    .line 100
    check-cast v8, Ljava/lang/String;

    .line 101
    .line 102
    if-nez v8, :cond_2

    .line 103
    .line 104
    move-object v6, v2

    .line 105
    goto :goto_3

    .line 106
    :cond_2
    sget-object v7, Lne/t;->k:Lne/t$b;

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    const/4 v10, 0x0

    .line 110
    const-string v11, "\\^`{|}"

    .line 111
    .line 112
    const/4 v12, 0x1

    .line 113
    const/4 v13, 0x1

    .line 114
    const/4 v14, 0x1

    .line 115
    const/4 v15, 0x0

    .line 116
    const/16 v16, 0x0

    .line 117
    .line 118
    const/16 v17, 0xc3

    .line 119
    .line 120
    const/16 v18, 0x0

    .line 121
    .line 122
    invoke-static/range {v7 .. v18}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    :goto_3
    invoke-interface {v1, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move v3, v5

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lne/t$a;->d()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    if-nez v8, :cond_4

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_4
    sget-object v7, Lne/t;->k:Lne/t$b;

    .line 139
    .line 140
    const/4 v9, 0x0

    .line 141
    const/4 v10, 0x0

    .line 142
    const-string v11, " \"#<>\\^`{|}"

    .line 143
    .line 144
    const/4 v12, 0x1

    .line 145
    const/4 v13, 0x1

    .line 146
    const/4 v14, 0x0

    .line 147
    const/4 v15, 0x1

    .line 148
    const/16 v16, 0x0

    .line 149
    .line 150
    const/16 v17, 0xa3

    .line 151
    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    invoke-static/range {v7 .. v18}, Lne/t$b;->b(Lne/t$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    :goto_4
    invoke-virtual {v0, v2}, Lne/t$a;->w(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lne/t$a;->k()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lne/t$a;->k()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "://"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v1, "//"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Lne/t$a;->h()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    const/4 v3, 0x0

    .line 40
    if-lez v1, :cond_1

    .line 41
    .line 42
    move v1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v1, v3

    .line 45
    :goto_1
    const/16 v4, 0x3a

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lne/t$a;->e()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-lez v1, :cond_2

    .line 58
    .line 59
    move v1, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v1, v3

    .line 62
    :goto_2
    if-eqz v1, :cond_6

    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Lne/t$a;->h()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lne/t$a;->e()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-lez v1, :cond_4

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move v2, v3

    .line 83
    :goto_3
    if-eqz v2, :cond_5

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lne/t$a;->e()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_5
    const/16 v1, 0x40

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-virtual {p0}, Lne/t$a;->i()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_8

    .line 105
    .line 106
    invoke-virtual {p0}, Lne/t$a;->i()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const/4 v2, 0x2

    .line 114
    const/4 v5, 0x0

    .line 115
    invoke-static {v1, v4, v3, v2, v5}, Lrd/n;->M(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    const/16 v1, 0x5b

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lne/t$a;->i()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const/16 v1, 0x5d

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    invoke-virtual {p0}, Lne/t$a;->i()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lne/t$a;->j()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    const/4 v2, -0x1

    .line 151
    if-ne v1, v2, :cond_9

    .line 152
    .line 153
    invoke-virtual {p0}, Lne/t$a;->k()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_b

    .line 158
    .line 159
    :cond_9
    invoke-direct {p0}, Lne/t$a;->b()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {p0}, Lne/t$a;->k()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    if-eqz v2, :cond_a

    .line 168
    .line 169
    sget-object v2, Lne/t;->k:Lne/t$b;

    .line 170
    .line 171
    invoke-virtual {p0}, Lne/t$a;->k()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Lne/t$b;->c(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eq v1, v2, :cond_b

    .line 183
    .line 184
    :cond_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    :cond_b
    sget-object v1, Lne/t;->k:Lne/t$b;

    .line 191
    .line 192
    invoke-virtual {p0}, Lne/t$a;->f()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v1, v2, v0}, Lne/t$b;->h(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lne/t$a;->g()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-eqz v2, :cond_c

    .line 204
    .line 205
    const/16 v2, 0x3f

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lne/t$a;->g()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2, v0}, Lne/t$b;->j(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 218
    .line 219
    .line 220
    :cond_c
    invoke-virtual {p0}, Lne/t$a;->d()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-eqz v1, :cond_d

    .line 225
    .line 226
    const/16 v1, 0x23

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lne/t$a;->d()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 243
    .line 244
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-object v0
.end method

.method public final v(Ljava/lang/String;)Lne/t$a;
    .locals 3

    .line 1
    const-string v0, "scheme"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "http"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {p1, v0, v1}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lne/t$a;->C(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "https"

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lne/t$a;->C(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object p0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v1, "unexpected scheme: "

    .line 34
    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/t$a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lne/t$a;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/t$a;->g:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lne/t$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
