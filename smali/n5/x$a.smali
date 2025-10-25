.class public Ln5/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Ln5/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln5/x;
    .locals 3

    .line 1
    new-instance v0, Ln5/x;

    iget-object v1, p0, Ln5/x$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln5/x;-><init>(Ljava/lang/String;Ln5/b0;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ln5/x$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/x$a;->a:Ljava/lang/String;

    return-object p0
.end method
