.class final synthetic Lcom/google/android/gms/measurement/internal/s9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/w9;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/w9;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s9;->a:Lcom/google/android/gms/measurement/internal/w9;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s9;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s9;->a:Lcom/google/android/gms/measurement/internal/w9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s9;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/w9;->U(Landroid/os/Bundle;)V

    return-void
.end method
