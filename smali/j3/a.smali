.class public final synthetic Lj3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/a$d;


# instance fields
.field public final synthetic a:Lg3/t;


# direct methods
.method public synthetic constructor <init>(Lg3/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/a;->a:Lg3/t;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lj3/a;->a:Lg3/t;

    invoke-virtual {v0, p1, p2}, Lg3/t;->i(J)J

    move-result-wide p1

    return-wide p1
.end method
