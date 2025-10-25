.class public final synthetic Lf3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/h;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/e;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/e;->a:Ljava/lang/Exception;

    check-cast p1, Lf3/u$a;

    invoke-static {v0, p1}, Lf3/g;->j(Ljava/lang/Exception;Lf3/u$a;)V

    return-void
.end method
