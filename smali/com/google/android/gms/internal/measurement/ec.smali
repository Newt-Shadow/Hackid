.class abstract Lcom/google/android/gms/internal/measurement/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/dc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/qc;->d:I

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/dc;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/dc;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/measurement/ec;->a:Lcom/google/android/gms/internal/measurement/dc;

    .line 9
    .line 10
    return-void
.end method

.method static a()Lcom/google/android/gms/internal/measurement/dc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ec;->a:Lcom/google/android/gms/internal/measurement/dc;

    return-object v0
.end method
