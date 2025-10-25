.class final synthetic Lcom/google/android/gms/measurement/internal/t7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/y7;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Li6/g0;

.field private final synthetic d:Li6/k;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Ljava/lang/String;Li6/g0;Li6/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t7;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/t7;->c:Li6/g0;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/t7;->d:Li6/k;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t7;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/t7;->c:Li6/g0;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/t7;->d:Li6/k;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/y7;->g1(Ljava/lang/String;Li6/g0;Li6/k;)V

    return-void
.end method
