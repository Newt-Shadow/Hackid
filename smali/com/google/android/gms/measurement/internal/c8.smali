.class public final enum Lcom/google/android/gms/measurement/internal/c8;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/google/android/gms/measurement/internal/c8;

.field public static final enum c:Lcom/google/android/gms/measurement/internal/c8;

.field private static final synthetic d:[Lcom/google/android/gms/measurement/internal/c8;


# instance fields
.field private final a:[Li6/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/c8;

    .line 2
    .line 3
    sget-object v1, Li6/s;->b:Li6/s;

    .line 4
    .line 5
    sget-object v2, Li6/s;->c:Li6/s;

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Li6/s;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "STORAGE"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/c8;-><init>(Ljava/lang/String;I[Li6/s;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/measurement/internal/c8;->b:Lcom/google/android/gms/measurement/internal/c8;

    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/measurement/internal/c8;

    .line 20
    .line 21
    sget-object v2, Li6/s;->d:Li6/s;

    .line 22
    .line 23
    filled-new-array {v2}, [Li6/s;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "DMA"

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/c8;-><init>(Ljava/lang/String;I[Li6/s;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/google/android/gms/measurement/internal/c8;->c:Lcom/google/android/gms/measurement/internal/c8;

    .line 34
    .line 35
    filled-new-array {v0, v1}, [Lcom/google/android/gms/measurement/internal/c8;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/google/android/gms/measurement/internal/c8;->d:[Lcom/google/android/gms/measurement/internal/c8;

    .line 40
    .line 41
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Li6/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/c8;->a:[Li6/s;

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/c8;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/c8;->d:[Lcom/google/android/gms/measurement/internal/c8;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/c8;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/measurement/internal/c8;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()[Li6/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c8;->a:[Li6/s;

    return-object v0
.end method

.method final synthetic b()[Li6/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c8;->a:[Li6/s;

    return-object v0
.end method
