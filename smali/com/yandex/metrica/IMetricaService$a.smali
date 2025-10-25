.class public abstract Lcom/yandex/metrica/IMetricaService$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/IMetricaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/IMetricaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/IMetricaService$a$a;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.yandex.metrica.IMetricaService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/yandex/metrica/IMetricaService;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.yandex.metrica.IMetricaService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/yandex/metrica/IMetricaService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/yandex/metrica/IMetricaService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/yandex/metrica/IMetricaService$a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/yandex/metrica/IMetricaService$a$a;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const-string v2, "com.yandex.metrica.IMetricaService"

    .line 6
    .line 7
    if-eq p1, v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eq p1, v1, :cond_8

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq p1, v3, :cond_6

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq p1, v3, :cond_4

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    if-eq p1, v3, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x5

    .line 22
    if-eq p1, v3, :cond_0

    .line 23
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    .line 44
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    move-object v0, p2

    .line 49
    check-cast v0, Landroid/os/Bundle;

    .line 50
    .line 51
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/MetricaService;->a()Lcom/yandex/metrica/impl/ob/p1;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/p1;->a(ILandroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 69
    .line 70
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    move-object v0, p1

    .line 75
    check-cast v0, Landroid/os/Bundle;

    .line 76
    .line 77
    :cond_3
    invoke-static {}, Lcom/yandex/metrica/MetricaService;->a()Lcom/yandex/metrica/impl/ob/p1;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/p1;->a(Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    return v1

    .line 85
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 95
    .line 96
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    move-object v0, p1

    .line 101
    check-cast v0, Landroid/os/Bundle;

    .line 102
    .line 103
    :cond_5
    invoke-static {}, Lcom/yandex/metrica/MetricaService;->a()Lcom/yandex/metrica/impl/ob/p1;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/p1;->b(Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    return v1

    .line 111
    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 121
    .line 122
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    move-object v0, p1

    .line 127
    check-cast v0, Landroid/os/Bundle;

    .line 128
    .line 129
    :cond_7
    invoke-static {}, Lcom/yandex/metrica/MetricaService;->a()Lcom/yandex/metrica/impl/ob/p1;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/p1;->reportData(Landroid/os/Bundle;)V

    .line 134
    .line 135
    .line 136
    return v1

    .line 137
    :cond_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    .line 160
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    move-object v0, p2

    .line 165
    check-cast v0, Landroid/os/Bundle;

    .line 166
    .line 167
    :cond_9
    invoke-static {}, Lcom/yandex/metrica/MetricaService;->a()Lcom/yandex/metrica/impl/ob/p1;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-interface {p2, p1, p3, p4, v0}, Lcom/yandex/metrica/impl/ob/p1;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 172
    .line 173
    .line 174
    return v1

    .line 175
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return v1
.end method
