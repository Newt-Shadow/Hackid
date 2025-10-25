.class public final Lq8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq8/a$c;,
        Lq8/a$d;,
        Lq8/a$b;,
        Lq8/a$a;
    }
.end annotation


# static fields
.field private static final p:Lq8/a;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lq8/a$c;

.field private final e:Lq8/a$d;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:J

.field private final l:Lq8/a$b;

.field private final m:Ljava/lang/String;

.field private final n:J

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq8/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lq8/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lq8/a$a;->a()Lq8/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lq8/a;->p:Lq8/a;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Lq8/a$c;Lq8/a$d;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLq8/a$b;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    iput-wide v1, v0, Lq8/a;->a:J

    .line 7
    .line 8
    move-object v1, p3

    .line 9
    iput-object v1, v0, Lq8/a;->b:Ljava/lang/String;

    .line 10
    .line 11
    move-object v1, p4

    .line 12
    iput-object v1, v0, Lq8/a;->c:Ljava/lang/String;

    .line 13
    .line 14
    move-object v1, p5

    .line 15
    iput-object v1, v0, Lq8/a;->d:Lq8/a$c;

    .line 16
    .line 17
    move-object v1, p6

    .line 18
    iput-object v1, v0, Lq8/a;->e:Lq8/a$d;

    .line 19
    .line 20
    move-object v1, p7

    .line 21
    iput-object v1, v0, Lq8/a;->f:Ljava/lang/String;

    .line 22
    .line 23
    move-object v1, p8

    .line 24
    iput-object v1, v0, Lq8/a;->g:Ljava/lang/String;

    .line 25
    .line 26
    move v1, p9

    .line 27
    iput v1, v0, Lq8/a;->h:I

    .line 28
    .line 29
    move v1, p10

    .line 30
    iput v1, v0, Lq8/a;->i:I

    .line 31
    .line 32
    move-object v1, p11

    .line 33
    iput-object v1, v0, Lq8/a;->j:Ljava/lang/String;

    .line 34
    .line 35
    move-wide v1, p12

    .line 36
    iput-wide v1, v0, Lq8/a;->k:J

    .line 37
    .line 38
    move-object/from16 v1, p14

    .line 39
    .line 40
    iput-object v1, v0, Lq8/a;->l:Lq8/a$b;

    .line 41
    .line 42
    move-object/from16 v1, p15

    .line 43
    .line 44
    iput-object v1, v0, Lq8/a;->m:Ljava/lang/String;

    .line 45
    .line 46
    move-wide/from16 v1, p16

    .line 47
    .line 48
    iput-wide v1, v0, Lq8/a;->n:J

    .line 49
    .line 50
    move-object/from16 v1, p18

    .line 51
    .line 52
    iput-object v1, v0, Lq8/a;->o:Ljava/lang/String;

    .line 53
    .line 54
    return-void
.end method

.method public static p()Lq8/a$a;
    .locals 1

    .line 1
    new-instance v0, Lq8/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lq8/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq8/a;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq8/a;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lq8/a$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->l:Lq8/a$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lq8/a$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->d:Lq8/a$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lq8/a;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq8/a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m()Lq8/a$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->e:Lq8/a$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lq8/a;->i:I

    .line 2
    .line 3
    return v0
.end method
