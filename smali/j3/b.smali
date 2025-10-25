.class final Lj3/b;
.super Lg3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lg3/t;IJJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj3/a;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lj3/a;-><init>(Lg3/t;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lj3/b$b;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move/from16 v4, p2

    .line 15
    .line 16
    invoke-direct {v2, v0, v4, v3}, Lj3/b$b;-><init>(Lg3/t;ILj3/b$a;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lg3/t;->f()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const-wide/16 v5, 0x0

    .line 24
    .line 25
    iget-wide v7, v0, Lg3/t;->j:J

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lg3/t;->d()J

    .line 28
    .line 29
    .line 30
    move-result-wide v13

    .line 31
    const/4 v9, 0x6

    .line 32
    iget v0, v0, Lg3/t;->c:I

    .line 33
    .line 34
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v15

    .line 38
    move-object/from16 v0, p0

    .line 39
    .line 40
    move-wide/from16 v9, p3

    .line 41
    .line 42
    move-wide/from16 v11, p5

    .line 43
    .line 44
    invoke-direct/range {v0 .. v15}, Lg3/a;-><init>(Lg3/a$d;Lg3/a$f;JJJJJJI)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
