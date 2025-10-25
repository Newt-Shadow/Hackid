.class final Lcom/google/android/gms/measurement/internal/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/r5;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/pd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ed;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ed;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ed;->c:Lcom/google/android/gms/measurement/internal/pd;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ed;->c:Lcom/google/android/gms/measurement/internal/pd;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ed;->a:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ed;->b:Ljava/util/List;

    .line 7
    .line 8
    move v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p4

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/pd;->A(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
