.class public final synthetic Lo3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln6/g;


# instance fields
.field public final synthetic a:Lo3/g;


# direct methods
.method public synthetic constructor <init>(Lo3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/e;->a:Lo3/g;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo3/e;->a:Lo3/g;

    check-cast p1, Lo3/o;

    invoke-virtual {v0, p1}, Lo3/g;->n(Lo3/o;)Lo3/o;

    move-result-object p1

    return-object p1
.end method
