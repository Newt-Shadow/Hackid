.class public final synthetic Ljb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljb/a;


# direct methods
.method public synthetic constructor <init>(Ljb/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljb/b;->a:Ljb/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/b;->a:Ljb/a;

    invoke-static {v0}, Ljb/a$b;->a(Ljb/a;)V

    return-void
.end method
