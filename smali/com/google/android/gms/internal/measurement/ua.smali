.class public final Lcom/google/android/gms/internal/measurement/ua;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/google/android/gms/internal/measurement/ua;

.field static final c:Lcom/google/android/gms/internal/measurement/ua;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ua;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ua;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/measurement/ua;->c:Lcom/google/android/gms/internal/measurement/ua;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ua;->a:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/ua;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ua;->b:Lcom/google/android/gms/internal/measurement/ua;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-class v0, Lcom/google/android/gms/internal/measurement/ua;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ua;->b:Lcom/google/android/gms/internal/measurement/ua;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :cond_1
    sget v1, Lcom/google/android/gms/internal/measurement/qc;->d:I

    .line 16
    .line 17
    const-class v1, Lcom/google/android/gms/internal/measurement/ua;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/cb;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ua;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lcom/google/android/gms/internal/measurement/ua;->b:Lcom/google/android/gms/internal/measurement/ua;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v1
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/measurement/ic;I)Lcom/google/android/gms/internal/measurement/gb;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ta;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ta;-><init>(Ljava/lang/Object;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ua;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method
