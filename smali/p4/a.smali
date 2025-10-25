.class public final Lp4/a;
.super Lm4/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/a$a;
    }
.end annotation


# instance fields
.field private final o:Ly4/e0;

.field private final p:Ly4/e0;

.field private final q:Lp4/a$a;

.field private r:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "PgsDecoder"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lm4/g;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ly4/e0;

    .line 7
    .line 8
    invoke-direct {v0}, Ly4/e0;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lp4/a;->o:Ly4/e0;

    .line 12
    .line 13
    new-instance v0, Ly4/e0;

    .line 14
    .line 15
    invoke-direct {v0}, Ly4/e0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lp4/a;->p:Ly4/e0;

    .line 19
    .line 20
    new-instance v0, Lp4/a$a;

    .line 21
    .line 22
    invoke-direct {v0}, Lp4/a$a;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lp4/a;->q:Lp4/a$a;

    .line 26
    .line 27
    return-void
.end method

.method private B(Ly4/e0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ly4/e0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ly4/e0;->j()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x78

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lp4/a;->r:Ljava/util/zip/Inflater;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/util/zip/Inflater;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lp4/a;->r:Ljava/util/zip/Inflater;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lp4/a;->p:Ly4/e0;

    .line 27
    .line 28
    iget-object v1, p0, Lp4/a;->r:Ljava/util/zip/Inflater;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Ly4/q0;->p0(Ly4/e0;Ly4/e0;Ljava/util/zip/Inflater;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lp4/a;->p:Ly4/e0;

    .line 37
    .line 38
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lp4/a;->p:Ly4/e0;

    .line 43
    .line 44
    invoke-virtual {v1}, Ly4/e0;->g()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1, v0, v1}, Ly4/e0;->R([BI)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method private static C(Ly4/e0;Lp4/a$a;)Lm4/b;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ly4/e0;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Ly4/e0;->M()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v3, v2

    .line 18
    const/4 v4, 0x0

    .line 19
    if-le v3, v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 22
    .line 23
    .line 24
    return-object v4

    .line 25
    :cond_0
    const/16 v0, 0x80

    .line 26
    .line 27
    if-eq v1, v0, :cond_1

    .line 28
    .line 29
    packed-switch v1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_0
    invoke-static {p1, p0, v2}, Lp4/a$a;->c(Lp4/a$a;Ly4/e0;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_1
    invoke-static {p1, p0, v2}, Lp4/a$a;->b(Lp4/a$a;Ly4/e0;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    invoke-static {p1, p0, v2}, Lp4/a$a;->a(Lp4/a$a;Ly4/e0;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Lp4/a$a;->d()Lm4/b;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p1}, Lp4/a$a;->h()V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0, v3}, Ly4/e0;->T(I)V

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected z([BIZ)Lm4/h;
    .locals 0

    .line 1
    iget-object p3, p0, Lp4/a;->o:Ly4/e0;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Ly4/e0;->R([BI)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lp4/a;->o:Ly4/e0;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lp4/a;->B(Ly4/e0;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lp4/a;->q:Lp4/a$a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lp4/a$a;->h()V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    iget-object p2, p0, Lp4/a;->o:Ly4/e0;

    .line 22
    .line 23
    invoke-virtual {p2}, Ly4/e0;->a()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 p3, 0x3

    .line 28
    if-lt p2, p3, :cond_1

    .line 29
    .line 30
    iget-object p2, p0, Lp4/a;->o:Ly4/e0;

    .line 31
    .line 32
    iget-object p3, p0, Lp4/a;->q:Lp4/a$a;

    .line 33
    .line 34
    invoke-static {p2, p3}, Lp4/a;->C(Ly4/e0;Lp4/a$a;)Lm4/b;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance p2, Lp4/b;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Lp4/b;-><init>(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    return-object p2
.end method
