.class final synthetic Lcom/google/android/gms/measurement/internal/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/ob;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/ob;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/mb;->a:Lcom/google/android/gms/measurement/internal/ob;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/mb;->a:Lcom/google/android/gms/measurement/internal/ob;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ob;->b:Lcom/google/android/gms/measurement/internal/pb;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/pb;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/google/android/gms/measurement/internal/nb;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/nb;-><init>(Lcom/google/android/gms/measurement/internal/vb;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
