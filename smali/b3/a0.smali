.class public final Lb3/a0;
.super Lb3/i3;
.source "SourceFile"


# static fields
.field public static final p:Lb3/r$a;

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static final v:Ljava/lang/String;


# instance fields
.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Lb3/x1;

.field public final m:I

.field public final n:Ld4/s;

.field final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb3/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lb3/z;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb3/a0;->p:Lb3/r$a;

    .line 7
    .line 8
    const/16 v0, 0x3e9

    .line 9
    .line 10
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lb3/a0;->q:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, 0x3ea

    .line 17
    .line 18
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lb3/a0;->r:Ljava/lang/String;

    .line 23
    .line 24
    const/16 v0, 0x3eb

    .line 25
    .line 26
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lb3/a0;->s:Ljava/lang/String;

    .line 31
    .line 32
    const/16 v0, 0x3ec

    .line 33
    .line 34
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lb3/a0;->t:Ljava/lang/String;

    .line 39
    .line 40
    const/16 v0, 0x3ed

    .line 41
    .line 42
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lb3/a0;->u:Ljava/lang/String;

    .line 47
    .line 48
    const/16 v0, 0x3ee

    .line 49
    .line 50
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lb3/a0;->v:Ljava/lang/String;

    .line 55
    .line 56
    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v9}, Lb3/a0;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILb3/x1;IZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILb3/x1;IZ)V
    .locals 14

    move v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    .line 2
    invoke-static/range {v0 .. v5}, Lb3/a0;->j(ILjava/lang/String;Ljava/lang/String;ILb3/x1;I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v13, p9

    .line 4
    invoke-direct/range {v1 .. v13}, Lb3/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILb3/x1;ILd4/s;JZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 5
    invoke-direct {p0, p1}, Lb3/i3;-><init>(Landroid/os/Bundle;)V

    .line 6
    sget-object v0, Lb3/a0;->q:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lb3/a0;->i:I

    .line 7
    sget-object v0, Lb3/a0;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb3/a0;->j:Ljava/lang/String;

    .line 8
    sget-object v0, Lb3/a0;->s:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lb3/a0;->k:I

    .line 9
    sget-object v0, Lb3/a0;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 10
    :cond_0
    sget-object v2, Lb3/x1;->E0:Lb3/r$a;

    invoke-interface {v2, v0}, Lb3/r$a;->fromBundle(Landroid/os/Bundle;)Lb3/r;

    move-result-object v0

    check-cast v0, Lb3/x1;

    :goto_0
    iput-object v0, p0, Lb3/a0;->l:Lb3/x1;

    .line 11
    sget-object v0, Lb3/a0;->u:Ljava/lang/String;

    const/4 v2, 0x4

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lb3/a0;->m:I

    .line 13
    sget-object v0, Lb3/a0;->v:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lb3/a0;->o:Z

    .line 14
    iput-object v1, p0, Lb3/a0;->n:Ld4/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILb3/x1;ILd4/s;JZ)V
    .locals 9

    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    .line 15
    invoke-direct/range {v0 .. v5}, Lb3/i3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 16
    :goto_1
    invoke-static {v2}, Ly4/a;->a(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    move v0, v1

    .line 17
    :cond_3
    invoke-static {v0}, Ly4/a;->a(Z)V

    .line 18
    iput v7, v6, Lb3/a0;->i:I

    move-object v0, p5

    .line 19
    iput-object v0, v6, Lb3/a0;->j:Ljava/lang/String;

    move v0, p6

    .line 20
    iput v0, v6, Lb3/a0;->k:I

    move-object/from16 v0, p7

    .line 21
    iput-object v0, v6, Lb3/a0;->l:Lb3/x1;

    move/from16 v0, p8

    .line 22
    iput v0, v6, Lb3/a0;->m:I

    move-object/from16 v0, p9

    .line 23
    iput-object v0, v6, Lb3/a0;->n:Ld4/s;

    .line 24
    iput-boolean v8, v6, Lb3/a0;->o:Z

    return-void
.end method

.method public static synthetic d(Landroid/os/Bundle;)Lb3/a0;
    .locals 1

    .line 1
    new-instance v0, Lb3/a0;

    invoke-direct {v0, p0}, Lb3/a0;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static f(Ljava/lang/Throwable;Ljava/lang/String;ILb3/x1;IZI)Lb3/a0;
    .locals 11

    .line 1
    new-instance v10, Lb3/a0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    move v8, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v8, p4

    .line 11
    :goto_0
    move-object v0, v10

    .line 12
    move-object v2, p0

    .line 13
    move/from16 v4, p6

    .line 14
    .line 15
    move-object v5, p1

    .line 16
    move v6, p2

    .line 17
    move-object v7, p3

    .line 18
    move/from16 v9, p5

    .line 19
    .line 20
    invoke-direct/range {v0 .. v9}, Lb3/a0;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILb3/x1;IZ)V

    .line 21
    .line 22
    .line 23
    return-object v10
.end method

.method public static g(Ljava/io/IOException;I)Lb3/a0;
    .locals 2

    .line 1
    new-instance v0, Lb3/a0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lb3/a0;-><init>(ILjava/lang/Throwable;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static h(Ljava/lang/RuntimeException;)Lb3/a0;
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    invoke-static {p0, v0}, Lb3/a0;->i(Ljava/lang/RuntimeException;I)Lb3/a0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static i(Ljava/lang/RuntimeException;I)Lb3/a0;
    .locals 2

    .line 1
    new-instance v0, Lb3/a0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lb3/a0;-><init>(ILjava/lang/Throwable;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static j(ILjava/lang/String;Ljava/lang/String;ILb3/x1;I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 p2, 0x3

    .line 7
    if-eq p0, p2, :cond_0

    .line 8
    .line 9
    const-string p0, "Unexpected runtime error"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "Remote error"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, " error, index="

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, ", format="

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, ", format_supported="

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {p5}, Ly4/q0;->W(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string p0, "Source error"

    .line 57
    .line 58
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p0, ": "

    .line 73
    .line 74
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :cond_3
    return-object p0
.end method


# virtual methods
.method e(Ld4/s;)Lb3/a0;
    .locals 14

    .line 1
    new-instance v13, Lb3/a0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v3, p0, Lb3/i3;->a:I

    .line 19
    .line 20
    iget v4, p0, Lb3/a0;->i:I

    .line 21
    .line 22
    iget-object v5, p0, Lb3/a0;->j:Ljava/lang/String;

    .line 23
    .line 24
    iget v6, p0, Lb3/a0;->k:I

    .line 25
    .line 26
    iget-object v7, p0, Lb3/a0;->l:Lb3/x1;

    .line 27
    .line 28
    iget v8, p0, Lb3/a0;->m:I

    .line 29
    .line 30
    iget-wide v10, p0, Lb3/i3;->b:J

    .line 31
    .line 32
    iget-boolean v12, p0, Lb3/a0;->o:Z

    .line 33
    .line 34
    move-object v0, v13

    .line 35
    move-object v9, p1

    .line 36
    invoke-direct/range {v0 .. v12}, Lb3/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILb3/x1;ILd4/s;JZ)V

    .line 37
    .line 38
    .line 39
    return-object v13
.end method
