.class public final synthetic Lf3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf3/h$f;


# direct methods
.method public synthetic constructor <init>(Lf3/h$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/i;->a:Lf3/h$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/i;->a:Lf3/h$f;

    invoke-static {v0}, Lf3/h$f;->c(Lf3/h$f;)V

    return-void
.end method
