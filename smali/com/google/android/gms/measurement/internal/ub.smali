.class final synthetic Lcom/google/android/gms/measurement/internal/ub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/vb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/vb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ub;->a:Lcom/google/android/gms/measurement/internal/vb;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ub;->a:Lcom/google/android/gms/measurement/internal/vb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/vb;->E()V

    return-void
.end method
