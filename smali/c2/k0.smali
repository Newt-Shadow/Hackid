.class public final synthetic Lc2/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/h;


# static fields
.field public static final synthetic a:Lc2/k0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc2/k0;

    invoke-direct {v0}, Lc2/k0;-><init>()V

    sput-object v0, Lc2/k0;->a:Lc2/k0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/u5;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/o0;->d()[B

    move-result-object p1

    return-object p1
.end method
