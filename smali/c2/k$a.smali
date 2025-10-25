.class public final Lc2/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc2/m0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc2/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc2/k;
    .locals 2

    .line 1
    new-instance v0, Lc2/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc2/k;-><init>(Lc2/n0;)V

    return-object v0
.end method
