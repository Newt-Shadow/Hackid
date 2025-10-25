package io.appmetrica.analytics.modulesapi.internal.common;

import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public interface TableDescription {
    List<String> getColumnNames();

    String getCreateTableScript();

    Map<Integer, DatabaseScript> getDatabaseProviderUpgradeScript();

    String getDropTableScript();

    String getTableName();
}
