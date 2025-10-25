.class final Lcom/google/android/gms/measurement/internal/rd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Lcom/google/android/gms/internal/measurement/d7;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;

.field private e:Li6/d0;

.field private f:J

.field private g:J

.field private h:J

.field private i:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/measurement/internal/sd;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/gms/measurement/internal/sd;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/rd;->a:J

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/rd;->b:Lcom/google/android/gms/internal/measurement/d7;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/rd;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/rd;->d:Ljava/util/Map;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/rd;->e:Li6/d0;

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/rd;->f:J

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/rd;->g:J

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/rd;->h:J

    iget v14, v0, Lcom/google/android/gms/measurement/internal/rd;->i:I

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/sd;-><init>(JLcom/google/android/gms/internal/measurement/d7;Ljava/lang/String;Ljava/util/Map;Li6/d0;JJJI[B)V

    return-object v16
.end method

.method public final b(J)Lcom/google/android/gms/measurement/internal/rd;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/rd;->a:J

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/measurement/d7;)Lcom/google/android/gms/measurement/internal/rd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/rd;->b:Lcom/google/android/gms/internal/measurement/d7;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/rd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/rd;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/rd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/rd;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final f(Li6/d0;)Lcom/google/android/gms/measurement/internal/rd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/rd;->e:Li6/d0;

    return-object p0
.end method

.method public final g(J)Lcom/google/android/gms/measurement/internal/rd;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/rd;->f:J

    return-object p0
.end method

.method public final h(J)Lcom/google/android/gms/measurement/internal/rd;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/rd;->g:J

    return-object p0
.end method

.method public final i(J)Lcom/google/android/gms/measurement/internal/rd;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/rd;->h:J

    return-object p0
.end method

.method public final j(I)Lcom/google/android/gms/measurement/internal/rd;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/measurement/internal/rd;->i:I

    return-object p0
.end method
