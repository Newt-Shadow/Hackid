.class final synthetic Lcom/google/android/gms/measurement/internal/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/fe;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/fe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ce;->a:Lcom/google/android/gms/measurement/internal/fe;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ce;->a:Lcom/google/android/gms/measurement/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fe;->a()V

    return-void
.end method
