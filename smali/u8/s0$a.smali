.class public final Lu8/s0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu8/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lu8/s0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu8/s0$a;

    invoke-direct {v0}, Lu8/s0$a;-><init>()V

    sput-object v0, Lu8/s0$a;->a:Lu8/s0$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lu8/s0;
    .locals 2

    .line 1
    sget-object v0, Lh7/c;->a:Lh7/c;

    .line 2
    .line 3
    invoke-static {v0}, Lh7/m;->a(Lh7/c;)Lh7/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/google/firebase/sessions/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lh7/f;->k(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/firebase/sessions/b;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/firebase/sessions/b;->b()Lu8/s0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
