.class public abstract Lcom/google/android/gms/internal/measurement/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/m1;

.field private static volatile b:Lcom/google/android/gms/internal/measurement/m1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/n1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/n1;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/o1;->a:Lcom/google/android/gms/internal/measurement/m1;

    sput-object v0, Lcom/google/android/gms/internal/measurement/o1;->b:Lcom/google/android/gms/internal/measurement/m1;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/m1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/o1;->b:Lcom/google/android/gms/internal/measurement/m1;

    return-object v0
.end method
