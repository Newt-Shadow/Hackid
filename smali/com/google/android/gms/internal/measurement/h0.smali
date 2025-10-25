.class final Lcom/google/android/gms/internal/measurement/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/g0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/z4;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/z4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h0;->a:Lcom/google/android/gms/internal/measurement/z4;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/h0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/z4;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h0;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/h0;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/z4;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
