.class public Ll4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll4/a$b;,
        Ll4/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Ll4/a$a;

.field public final f:[Ll4/a$b;

.field public final g:J

.field public final h:J


# direct methods
.method private constructor <init>(IIJJIZLl4/a$a;[Ll4/a$b;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Ll4/a;->a:I

    .line 6
    iput p2, p0, Ll4/a;->b:I

    .line 7
    iput-wide p3, p0, Ll4/a;->g:J

    .line 8
    iput-wide p5, p0, Ll4/a;->h:J

    .line 9
    iput p7, p0, Ll4/a;->c:I

    .line 10
    iput-boolean p8, p0, Ll4/a;->d:Z

    .line 11
    iput-object p9, p0, Ll4/a;->e:Ll4/a$a;

    .line 12
    iput-object p10, p0, Ll4/a;->f:[Ll4/a$b;

    return-void
.end method

.method public constructor <init>(IIJJJIZLl4/a$a;[Ll4/a$b;)V
    .locals 21

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    move-wide v13, v8

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p5

    move-wide/from16 v6, p3

    .line 1
    invoke-static/range {v2 .. v7}, Ly4/q0;->M0(JJJ)J

    move-result-wide v2

    move-wide v13, v2

    :goto_0
    cmp-long v0, p7, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p7

    move-wide/from16 v6, p3

    .line 2
    invoke-static/range {v2 .. v7}, Ly4/q0;->M0(JJJ)J

    move-result-wide v8

    :goto_1
    move-wide v15, v8

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v17, p9

    move/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    .line 3
    invoke-direct/range {v10 .. v20}, Ll4/a;-><init>(IIJJIZLl4/a$a;[Ll4/a$b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll4/a;->b(Ljava/util/List;)Ll4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Ljava/util/List;)Ll4/a;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lc4/c;

    .line 33
    .line 34
    iget-object v6, p0, Ll4/a;->f:[Ll4/a$b;

    .line 35
    .line 36
    iget v7, v5, Lc4/c;->b:I

    .line 37
    .line 38
    aget-object v6, v6, v7

    .line 39
    .line 40
    if-eq v6, v2, :cond_0

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    new-array v7, v3, [Lb3/x1;

    .line 45
    .line 46
    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, [Lb3/x1;

    .line 51
    .line 52
    invoke-virtual {v2, v7}, Ll4/a$b;->b([Lb3/x1;)Ll4/a$b;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v2, v6, Ll4/a$b;->j:[Lb3/x1;

    .line 63
    .line 64
    iget v5, v5, Lc4/c;->c:I

    .line 65
    .line 66
    aget-object v2, v2, v5

    .line 67
    .line 68
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    move-object v2, v6

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    if-eqz v2, :cond_2

    .line 76
    .line 77
    new-array v0, v3, [Lb3/x1;

    .line 78
    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, [Lb3/x1;

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ll4/a$b;->b([Lb3/x1;)Ll4/a$b;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_2
    new-array v0, v3, [Ll4/a$b;

    .line 93
    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    move-object v10, p1

    .line 99
    check-cast v10, [Ll4/a$b;

    .line 100
    .line 101
    new-instance p1, Ll4/a;

    .line 102
    .line 103
    iget v1, p0, Ll4/a;->a:I

    .line 104
    .line 105
    iget v2, p0, Ll4/a;->b:I

    .line 106
    .line 107
    iget-wide v3, p0, Ll4/a;->g:J

    .line 108
    .line 109
    iget-wide v5, p0, Ll4/a;->h:J

    .line 110
    .line 111
    iget v7, p0, Ll4/a;->c:I

    .line 112
    .line 113
    iget-boolean v8, p0, Ll4/a;->d:Z

    .line 114
    .line 115
    iget-object v9, p0, Ll4/a;->e:Ll4/a$a;

    .line 116
    .line 117
    move-object v0, p1

    .line 118
    invoke-direct/range {v0 .. v10}, Ll4/a;-><init>(IIJJIZLl4/a$a;[Ll4/a$b;)V

    .line 119
    .line 120
    .line 121
    return-object p1
.end method
