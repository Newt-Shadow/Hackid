.class final Lcom/google/android/gms/measurement/internal/s5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/r5;

.field private final b:I

.field private final c:Ljava/lang/Throwable;

.field private final d:[B

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r5;ILjava/lang/Throwable;[BLjava/util/Map;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s5;->a:Lcom/google/android/gms/measurement/internal/r5;

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/gms/measurement/internal/s5;->b:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/Throwable;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/s5;->d:[B

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/s5;->f:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s5;->a:Lcom/google/android/gms/measurement/internal/r5;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s5;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/measurement/internal/s5;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/s5;->c:Ljava/lang/Throwable;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/s5;->d:[B

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/s5;->f:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/r5;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
