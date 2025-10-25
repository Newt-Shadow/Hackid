.class public Lc2/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lc2/x0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic c(Lc2/q$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc2/q$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lc2/q;
    .locals 2

    .line 1
    iget-object v0, p0, Lc2/q$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lc2/q;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lc2/q;-><init>(Lc2/q$a;Lc2/y0;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Product type must be set"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public b(Ljava/lang/String;)Lc2/q$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lc2/q$a;->a:Ljava/lang/String;

    return-object p0
.end method
