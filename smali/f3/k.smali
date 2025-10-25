.class public final synthetic Lf3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf3/g;


# direct methods
.method public synthetic constructor <init>(Lf3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/k;->a:Lf3/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/k;->a:Lf3/g;

    invoke-static {v0}, Lf3/h$h;->c(Lf3/g;)V

    return-void
.end method
